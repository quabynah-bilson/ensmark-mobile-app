import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/extensions.dart';
import 'package:mobile/core/mixins/validators.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart' show UserRole;
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/authentication/presentation/manager/vendor.onboarding.dart';
import 'package:mobile/features/authentication/presentation/manager/vendor/location.identity.dart';
import 'package:mobile/features/authentication/presentation/widgets/onboarding.stepper.tile.dart';
import 'package:mobile/features/shared/domain/entities/revenue.item.dart';
import 'package:mobile/features/shared/presentation/manager/revenue.item.dart';
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/features/shared/presentation/widgets/text.field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX, LoadingIndicator;
import 'package:styled_widget/styled_widget.dart';

part 'vendor/forgot.password.dart';
part 'vendor/login.dart';
part 'vendor/personal.info.dart';
part 'vendor/business.info.dart';
part 'vendor/location.identity.dart';
part 'vendor/revenue.items.dart';

class RegisterVendorPage extends StatefulWidget {
  const RegisterVendorPage({super.key});

  @override
  State<RegisterVendorPage> createState() => _RegisterVendorPageState();
}

class _RegisterVendorPageState extends State<RegisterVendorPage> {
  late final _authManager = context.read<UserAuthManager>();
  late final _onboardingManager = context.read<VendorOnboardingManager>();
  late final _revenueItemManager = context.read<RevenueItemManager>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _revenueItemManager.getRevenueItems());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: _authManager,
      listener: (_, UserAuthState state) {
        if (!mounted) return;

        if (state.errorMessage != null) {
          context.showSnackBar(
            state.errorMessage!,
            context.colorScheme.errorContainer,
            context.colorScheme.onErrorContainer,
          );
        }

        if (state.user != null) {
          context.showSnackBar(
            'Account request submitted successfully',
            context.colorScheme.tertiaryContainer,
            context.colorScheme.onTertiaryContainer,
          );
          context.go(AppRoutes.verifyVendor.replaceFirst(':token', state.user!.guid));
        }
      },
      builder: (_, UserAuthState state) {
        return Scaffold(
          appBar: AppBar(title: Text('Request an account')),
          body: BlocBuilder(
            bloc: _onboardingManager,
            builder: (_, VendorOnboardingState voState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 24,
                children: [
                  Text(
                    "Getting started is simple — just follow the steps to request your ${AppConstants.appName} account. Once submitted successfully, a revenue officer will reach out to verify your details",
                    style: context.textTheme.bodyMedium,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          OnboardingStepperTile(
                            data: OnboardingStepperData(
                              title: 'Personal Information',
                              subtitle: 'Your first point of contact — provide your name, email, and phone number.',
                              isCompleted: voState.completedSteps.contains(VendorOnboardingStep.personalInfo),
                            ),
                            onTap: () => showCupertinoModalBottomSheet(
                              context: context,
                              useRootNavigator: true,
                              backgroundColor: context.colorScheme.surface,
                              builder: (_) => _PersonalInfoSheet(_onboardingManager),
                            ),
                          ),
                          if (voState.personalInfo.type == OwnerType.business) ...{
                            OnboardingStepperTile(
                              data: OnboardingStepperData(
                                title: 'Business Details',
                                subtitle: 'Tell us about your business registration and commencement',
                                isCompleted: voState.completedSteps.contains(VendorOnboardingStep.businessInfo),
                              ),
                              onTap: () => showCupertinoModalBottomSheet(
                                context: context,
                                useRootNavigator: true,
                                backgroundColor: context.colorScheme.surface,
                                builder: (_) => _BusinessInfoSheet(_onboardingManager),
                              ),
                            ),
                          },
                          OnboardingStepperTile(
                            data: OnboardingStepperData(
                              title: 'Location & Identity',
                              subtitle: 'Provide your location and verify your identity information',
                              isCompleted: voState.completedSteps.contains(VendorOnboardingStep.locationIdentity),
                            ),
                            onTap: () => showCupertinoModalBottomSheet(
                              context: context,
                              useRootNavigator: true,
                              backgroundColor: context.colorScheme.surface,
                              builder: (_) => _LocationIdentityInfoSheet(_onboardingManager),
                            ),
                          ),
                          BlocSelector(
                            bloc: _revenueItemManager,
                            selector: (RevenueItemState state) => state.revenueItems,
                            builder: (_, revenueItems) {
                              return OnboardingStepperTile(
                                data: OnboardingStepperData(
                                  title: 'Revenue Items',
                                  subtitle: 'Select the permits you’re applying for with this account',
                                  isCompleted: voState.revenueItems.revenueItems.isNotEmpty,
                                ),
                                onTap: () {
                                  showCupertinoModalBottomSheet(
                                    context: context,
                                    useRootNavigator: true,
                                    backgroundColor: context.colorScheme.surface,
                                    builder: (_) => _RevenueItemsSheet(_onboardingManager, revenueItems),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      AppButton(
                        text: 'Submit request',
                        isLoading: state.authenticating,
                        onPressed: () => _authManager.submitRequest(
                          firstName: voState.personalInfo.firstName,
                          lastName: voState.personalInfo.lastName,
                          username: voState.personalInfo.username,
                          phoneNumber: voState.personalInfo.phoneNumber,
                          ownerType: voState.personalInfo.type,
                          revenueItems: voState.revenueItems.revenueItems,
                          registrationNumber: voState.businessInfo.registrationNumber,
                          registrationDate: voState.businessInfo.registrationDate,
                          taxIdentificationNumber: voState.locationIdentity.taxIdentificationNumber,
                          houseNumber: voState.locationIdentity.houseNumber,
                          street: voState.locationIdentity.street,
                          digitalCode: voState.locationIdentity.digitalCode,
                          landmark: voState.locationIdentity.landmark,
                          town: voState.locationIdentity.town,
                          region: voState.locationIdentity.region,
                          country: voState.locationIdentity.country,
                          idType: voState.locationIdentity.idType.label,
                          idNumber: voState.locationIdentity.idNumber,
                          addressLine1: voState.locationIdentity.addressLine1,
                          addressLine2: voState.locationIdentity.addressLine2,
                          addressLine3: voState.locationIdentity.addressLine3,
                          addressLine4: voState.locationIdentity.addressLine4,
                          dateOfBirth: voState.personalInfo.dateOfBirth,
                        ),
                      ),
                      AppButton(
                        text: 'Already a member? Sign in',
                        outlined: true,
                        onPressed: () async {
                          await showCupertinoModalBottomSheet(
                            context: context,
                            backgroundColor: context.colorScheme.surface,
                            useRootNavigator: true,
                            builder: (_) => const _VendorLoginSheet(),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
          ).padding(horizontal: 24, top: 24, bottom: context.padding.bottom + 16),
        );
      },
    );
  }
}
