import 'package:flutter/material.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/extensions.dart';
import 'package:mobile/core/mixins/validators.dart';
import 'package:mobile/features/onboarding/presentation/widgets/onboarding.stepper.tile.dart';
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/features/shared/presentation/widgets/text.field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

part 'vendor/forgot.password.dart';
part 'vendor/login.dart';
part 'vendor/step1.dart';
part 'vendor/step2.dart';
part 'vendor/step3.dart';
part 'vendor/step4.dart';

class RegisterVendorPage extends StatefulWidget {
  const RegisterVendorPage({super.key});

  @override
  State<RegisterVendorPage> createState() => _RegisterVendorPageState();
}

class _RegisterVendorPageState extends State<RegisterVendorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request an account')),
      body: Column(
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
                      isActive: true,
                    ),
                    onTap: () => showCupertinoModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      backgroundColor: context.colorScheme.surface,
                      builder: (_) => _PersonalInfoSheet(),
                    ),
                  ),
                  OnboardingStepperTile(
                    data: OnboardingStepperData(
                      title: 'Business Details',
                      subtitle: 'Tell us about your business registration and commencement',
                      isActive: true,
                    ),
                    onTap: () => showCupertinoModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      backgroundColor: context.colorScheme.surface,
                      builder: (_) => _BusinessInfoSheet(),
                    ),
                  ),
                  OnboardingStepperTile(
                    data: OnboardingStepperData(
                      title: 'Location & Identity',
                      subtitle: 'Provide your location and verify your identity information',
                      isActive: false,
                    ),
                  ),
                  OnboardingStepperTile(
                    data: OnboardingStepperData(
                      title: 'Revenue Items',
                      subtitle: 'Select the permits you’re applying for with this account',
                      isActive: false,
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
                onPressed: () {
                  //!todo - submit request
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
      ).padding(horizontal: 24, top: 24, bottom: context.padding.bottom + 16),
    );
  }
}
