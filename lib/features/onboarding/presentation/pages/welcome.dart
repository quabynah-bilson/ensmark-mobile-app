import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/core/constants.dart';
import 'package:mobile/core/extensions.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/generated/assets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:styled_widget/styled_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: context.colorScheme.surface,
          foregroundColor: context.colorScheme.onSurface,
          icon: Icon(TablerIcons.player_play),
          tooltip: 'Get started',
          label: Text('Get started'),
          onPressed: _showGetStartedSheet,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.imgWelcomeImage, fit: BoxFit.cover, alignment: Alignment.bottomCenter),
            ),
            Positioned.fill(child: Container(color: context.colorScheme.onSurface.withValues(alpha: 0.15))),
            Positioned(
              top: context.height * 0.15,
              left: 16,
              right: 16,
              height: context.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: context.height * 0.1,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    Text(
                      'Your Property Management Simplified',
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineLarge?.copyWith(color: context.colorScheme.surface),
                    ),
                    Text(
                      'Manage your properties, payments, and notifications all in one place',
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.surface),
                    ),
                  ],
                ),
              ).padding(horizontal: 16),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showGetStartedSheet() async {
    await showCupertinoModalBottomSheet(
      context: context,
      backgroundColor: context.colorScheme.surface,
      useRootNavigator: true,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Text('Welcome to ${AppConstants.appName}', style: context.textTheme.titleLarge),
                Text('Select a user type to get started', style: context.textTheme.bodyMedium),
              ],
            ),
            Lottie.asset(Assets.animHouseRent, height: context.height * 0.25),
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                AppButton(
                  text: 'Continue as Property Owner',
                  onPressed: () => context
                    ..pop()
                    ..push(AppRoutes.registerVendor),
                ),
                AppButton.outlined(
                  text: 'Continue as Revenue Officer',
                  onPressed: () => context
                    ..pop()
                    ..push(AppRoutes.loginRevenueOfficer),
                ),
              ],
            ),
          ],
        ).padding(top: 24, bottom: context.padding.bottom + 24, horizontal: 24);
      },
    );
  }
}
