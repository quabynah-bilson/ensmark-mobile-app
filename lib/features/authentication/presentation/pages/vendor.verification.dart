import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/generated/assets.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;
import 'package:styled_widget/styled_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class VendorVerificationPage extends StatefulWidget {
  const VendorVerificationPage({super.key, required this.args});

  final VendorVerificationPageArgs args;

  @override
  State<VendorVerificationPage> createState() => _VendorVerificationPageState();
}

class _VendorVerificationPageState extends State<VendorVerificationPage> {
  late final _authManager = context.read<UserAuthManager>();

  @override
  Widget build(BuildContext context) {
    return BlocListener(
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

        if (state.user?.verified == true) {
          context.go(AppRoutes.createPassword.replaceFirst(':token', state.user!.guid));
          context.showSnackBar(
            'Your account has been verified. You can now create a password to login.',
            context.colorScheme.primary,
            context.colorScheme.onPrimary,
          );
        }

        if (state.user?.verified == false) {
          context.showSnackBar(
            'Your account is still under review. We\'ll notify you once it\'s been verified.',
            context.colorScheme.primary,
            context.colorScheme.onPrimary,
          );
        }
      },
      child: AnimationLimiter(
        child: Scaffold(
          backgroundColor: context.colorScheme.surface,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 600),
                        childAnimationBuilder: (widget) =>
                            SlideAnimation(verticalOffset: 50.0, child: FadeInAnimation(child: widget)),
                        children: [
                          // Pending approval animation
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: context.colorScheme.primary.withValues(alpha: 0.1),
                                shape: BoxShape.circle,
                              ),
                              child: Lottie.asset(Assets.animRegister, width: 80, height: 80, fit: BoxFit.contain),
                            ),
                          ),

                          // Main heading
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Text(
                              'Pending Approval',
                              style: context.textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.onSurface,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          // Description
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: Text(
                              'Your account is currently being reviewed by our revenue officers. We\'ll notify you once your property has been verified and approved.',
                              style: context.textTheme.bodyLarge?.copyWith(
                                color: context.colorScheme.onSurface.withValues(alpha: 0.7),
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          // Status card
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: context.colorScheme.surfaceContainer,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: context.colorScheme.outline.withValues(alpha: 0.2)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 16),
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.orange.withValues(alpha: 0.2),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(TablerIcons.clock, color: Colors.orange, size: 20),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 4),
                                              child: Text(
                                                'Under Review',
                                                style: context.textTheme.titleMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Estimated review time: 24-48 hours',
                                              style: context.textTheme.bodySmall?.copyWith(
                                                color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Steps indicator
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: context.colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: context.colorScheme.outline.withValues(alpha: 0.2)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(
                                    'Next Steps',
                                    style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                _buildStepItem(
                                  context,
                                  icon: TablerIcons.check,
                                  iconColor: Colors.green,
                                  title: 'Application Submitted',
                                  subtitle: 'Your registration details have been received',
                                  isCompleted: true,
                                ),
                                _buildStepItem(
                                  context,
                                  icon: TablerIcons.eye,
                                  iconColor: Colors.orange,
                                  title: 'Property Verification',
                                  subtitle: 'Revenue officer verifying your property details',
                                  isCompleted: false,
                                  isActive: true,
                                ),
                                _buildStepItem(
                                  context,
                                  icon: TablerIcons.shield_check,
                                  iconColor: context.colorScheme.outline,
                                  title: 'Account Approval',
                                  subtitle: 'Final approval and account activation',
                                  isCompleted: false,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Bottom actions
                  Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 400),
                      delay: const Duration(milliseconds: 200),
                      childAnimationBuilder: (widget) =>
                          SlideAnimation(verticalOffset: 30.0, child: FadeInAnimation(child: widget)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: AppButton.outlined(text: 'Contact Support', onPressed: _contactSupport),
                        ),
                        AppButton(text: 'Check Status', onPressed: () => _checkStatus()),
                      ],
                    ),
                  ).padding(vertical: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStepItem(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required bool isCompleted,
    bool isActive = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: isCompleted
                    ? Colors.green.withValues(alpha: 0.2)
                    : isActive
                    ? iconColor.withValues(alpha: 0.2)
                    : context.colorScheme.outline.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 16),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    title,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                      color: isActive
                          ? context.colorScheme.onSurface
                          : context.colorScheme.onSurface.withValues(alpha: 0.8),
                    ),
                  ),
                ),
                Text(
                  subtitle,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _contactSupport() {
    launchUrl(Uri.parse('tel:${AppConstants.supportPhoneNumber}'));
  }

  Future<void> _checkStatus() async {
    await _authManager.checkAuthStatus(passwordReset: true);
  }
}
