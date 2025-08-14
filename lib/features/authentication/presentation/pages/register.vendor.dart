import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/extensions.dart';
import 'package:mobile/core/mixins/validators.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart' show UserRole;
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/authentication/presentation/manager/vendor.onboarding.dart';
import 'package:mobile/features/authentication/presentation/widgets/onboarding.stepper.tile.dart';
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
part 'vendor/step4.dart';

class RegisterVendorPage extends StatefulWidget {
  const RegisterVendorPage({super.key});

  @override
  State<RegisterVendorPage> createState() => _RegisterVendorPageState();
}

class _RegisterVendorPageState extends State<RegisterVendorPage> {
  late final _authManager = context.read<UserAuthManager>();
  late final _onboardingManager = context.read<VendorOnboardingManager>();

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
          //!todo - show success
          context.showSnackBar(
            state.errorMessage!,
            context.colorScheme.errorContainer,
            context.colorScheme.onErrorContainer,
          );
          context.go(AppRoutes.initial);
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
                              builder: (_) => _PersonalInfoSheet(),
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
                                builder: (_) => _BusinessInfoSheet(),
                              ),
                            ),
                          },
                          OnboardingStepperTile(
                            data: OnboardingStepperData(
                              title: 'Location & Identity',
                              subtitle: 'Provide your location and verify your identity information',
                              isCompleted: voState.completedSteps.contains(VendorOnboardingStep.locationIdentity),
                            ),
                          ),
                          OnboardingStepperTile(
                            data: OnboardingStepperData(
                              title: 'Revenue Items',
                              subtitle: 'Select the permits you’re applying for with this account',
                              isCompleted: voState.completedSteps.contains(VendorOnboardingStep.revenueItems),
                            ),
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
                        onPressed: () {
                          //!todo - submit request
                          // _onboardingManager
                        },
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
