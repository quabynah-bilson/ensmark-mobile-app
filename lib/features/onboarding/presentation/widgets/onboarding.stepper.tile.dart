import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:mobile/core/extensions.dart';
import 'package:styled_widget/styled_widget.dart';

final class OnboardingStepperData {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isActive;

  const OnboardingStepperData({
    required this.title,
    required this.subtitle,
    this.isCompleted = false,
    this.isActive = false,
  });
}

class OnboardingStepperTile extends StatelessWidget {
  const OnboardingStepperTile({super.key, required this.data, this.onTap});

  final OnboardingStepperData data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final background = data.isActive ? context.colorScheme.surface : context.colorScheme.surfaceContainer;
    final border = data.isActive ? null : Border.all(color: context.theme.disabledColor);
    final completedStateForeground = data.isCompleted
        ? context.colorScheme.onTertiaryContainer
        : context.colorScheme.onSurface;
    final completedStateBackground = data.isCompleted
        ? context.colorScheme.tertiaryContainer
        : context.colorScheme.surfaceContainer;
    return Container(
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: background, border: border, borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Text(data.title, style: context.textTheme.bodyMedium),
                Text(data.subtitle, style: context.textTheme.bodySmall),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: completedStateBackground,
              shape: BoxShape.circle,
              border: data.isCompleted ? null : Border.all(color: context.theme.disabledColor),
            ),
            child: Icon(
              data.isCompleted ? TablerIcons.check : TablerIcons.x,
              size: 16,
              color: completedStateForeground,
            ).center(),
          ),
        ],
      ),
    ).gestures(onTap: data.isActive ? onTap : null);
  }
}
