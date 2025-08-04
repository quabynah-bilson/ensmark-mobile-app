import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

/// A reusable and customizable button widget for the application.
///
/// It supports loading states and can be easily styled.
class AppButton extends StatelessWidget {
  /// The text to display inside the button.
  final String text;

  /// The callback that is called when the button is tapped.
  /// If null, the button will be disabled.
  final VoidCallback? onPressed;

  /// A boolean to indicate a loading state.
  /// When true, a circular progress indicator is shown.
  final bool isLoading;

  /// The background color of the button.
  ///
  /// Defaults to the theme's accent color if not provided.
  final Color? backgroundColor;
  final Color? textColor;
  final bool outlined;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.outlined = false,
  });

  factory AppButton.outlined({required String text, bool isLoading = false, VoidCallback? onPressed}) =>
      AppButton(text: text, onPressed: onPressed, isLoading: isLoading, outlined: true);

  @override
  Widget build(BuildContext context) {
    // Determine if the button should be disabled
    final bool isDisabled = onPressed == null || isLoading;
    final responsiveWidth = context.width;

    if (outlined) {
      // this is an outlined button
      return OutlinedButton(
        onPressed: isDisabled ? null : onPressed,
        child: Builder(
          builder: (context) {
            if (isLoading) {
              return SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  // Use a color that contrasts with the button's background.
                  valueColor: AlwaysStoppedAnimation<Color>(context.colorScheme.onPrimary),
                  strokeWidth: 2.0,
                ),
              );
            }

            return Text(text);
          },
        ),
      ).constrained(minWidth: responsiveWidth, maxWidth: responsiveWidth);
    }

    return ElevatedButton(
      // The onPressed callback is null when loading or when explicitly disabled.
      onPressed: isDisabled ? null : onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // The loading indicator, shown only when isLoading is true.
          if (isLoading)
            SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                // Use a color that contrasts with the button's background.
                valueColor: AlwaysStoppedAnimation<Color>(context.colorScheme.onPrimary),
                strokeWidth: 2.0,
              ),
            ),
          // The button text, hidden when loading.
          Opacity(opacity: isLoading ? 0 : 1, child: Text(text)),
        ],
      ),
    ).constrained(minWidth: responsiveWidth, maxWidth: responsiveWidth);
  }
}
