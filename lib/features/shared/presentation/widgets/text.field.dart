import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/typedefs.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;
import 'package:styled_widget/styled_widget.dart';

/// An enumeration for different text field types to simplify configuration.
enum AppTextFieldType { text, password, number, email, selector, address, identity }

/// A reusable and customizable text form field widget for the application.
class AppTextField<T> extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final AppTextFieldType fieldType;
  final TextCapitalization textCapitalization;
  final FieldValidationBuilder validator;
  final OnFieldValueChanged onChanged;
  final IconData? prefixIcon;
  final String Function(T)? displayText;
  final bool enabled;
  final bool hasFloatingLabel;
  final TextInputAction? action;
  final bool required;
  final bool readOnly;

  // Properties specific to the 'selector' type
  final List<T>? items;
  final void Function(T)? onItemSelected;
  final VoidCallback? onTap;
  final String? initialValue;
  final String? helperText;

  const AppTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.fieldType = AppTextFieldType.text,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.validator,
    this.prefixIcon,
    this.items,
    this.onItemSelected,
    this.displayText,
    this.action,
    this.enabled = true,
    this.hasFloatingLabel = true,
    this.required = true,
    this.readOnly = false,
    this.initialValue,
    this.onTap,
    this.helperText,
  }) : assert(
         fieldType != AppTextFieldType.selector || (items != null && onItemSelected != null && displayText != null),
         'For selector type, `displayText`,`items` and `onItemSelected` must be provided.',
       );

  @override
  State<AppTextField<T>> createState() => _AppTextFieldState<T>();
}

class _AppTextFieldState<T> extends State<AppTextField<T>> {
  TextEditingController? _controller;
  bool _ownsController = false;
  // State variable to manage password visibility.
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    if (widget.fieldType == AppTextFieldType.selector) {
      _controller = TextEditingController(text: widget.initialValue);
      _ownsController = true;
    } else {
      if (widget.controller != null) {
        _controller = widget.controller;
        _ownsController = false;
      } else {
        _controller = TextEditingController(text: widget.initialValue);
        _ownsController = true;
      }
    }
  }

  @override
  void didUpdateWidget(covariant AppTextField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final initialChanged = widget.initialValue != oldWidget.initialValue;
    // Keep the text in sync with updated initialValue when we manage the controller.
    if (_ownsController && initialChanged) {
      _controller?.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    if (_ownsController) {
      _controller?.dispose();
    }
    super.dispose();
  }

  /// Shows the modal bottom sheet for the selector type.
  Future<void> _showSelectorModal() async {
    // Guard against empty or null lists.
    if (widget.items == null || widget.items!.isEmpty) return;

    String formatLabel(T item) => widget.displayText?.call(item) ?? '';

    await showMaterialModalBottomSheet(
      context: context,
      useRootNavigator: true,
      bounce: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (BuildContext context) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.items!.length,
          padding: EdgeInsets.fromLTRB(24, 16, 24, context.padding.bottom + 16),
          itemBuilder: (BuildContext context, int index) {
            final item = widget.items![index];
            return ListTile(
              title: Text(formatLabel(item)),
              onTap: () {
                // Update the controller with the display text.
                _controller?.text = formatLabel(item);
                // Trigger the callback with the selected item.
                widget.onItemSelected?.call(item);
                // Close the bottom sheet.
                context.pop();
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final responsiveWidth = context.width;

    // --- Selector Field ---
    if (widget.fieldType == AppTextFieldType.selector) {
      return TextFormField(
        controller: _controller,
        enabled: widget.enabled,
        readOnly: true,
        textInputAction: widget.action,
        onTap: _showSelectorModal,
        onChanged: widget.onChanged,
        // Shows the modal on tap
        validator: widget.validator,
        decoration: InputDecoration(
          floatingLabelBehavior: widget.hasFloatingLabel ? FloatingLabelBehavior.auto : FloatingLabelBehavior.never,
          label: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.labelText),
              if (widget.required) Text('*', style: TextStyle(color: context.colorScheme.error)),
            ],
          ),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          // Add a dropdown arrow to indicate it's a selector
          suffixIcon: const Icon(TablerIcons.circle_arrow_down),
        ),
      ).constrained(maxWidth: responsiveWidth);
    }

    // --- Standard Text Fields ---
    TextInputType keyboardType;
    switch (widget.fieldType) {
      case AppTextFieldType.number:
        keyboardType = TextInputType.number;
        break;
      case AppTextFieldType.email:
        keyboardType = TextInputType.emailAddress;
        break;
      default:
        keyboardType = TextInputType.text;
    }

    return TextFormField(
      controller: _controller,
      obscureText: widget.fieldType == AppTextFieldType.password ? _obscureText : false,
      keyboardType: keyboardType,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      textCapitalization: widget.textCapitalization,
      validator: widget.validator,
      onChanged: widget.onChanged,
      textInputAction: widget.action,
      enabled: widget.enabled,
      inputFormatters: _inputFormatters,
      decoration: InputDecoration(
        helperText: widget.helperText,
        floatingLabelBehavior: widget.hasFloatingLabel ? FloatingLabelBehavior.auto : FloatingLabelBehavior.never,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.labelText),
            if (widget.required) Text('*', style: TextStyle(color: context.colorScheme.error)),
          ],
        ),
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.fieldType == AppTextFieldType.password
            ? IconButton(
                icon: Icon(
                  _obscureText ? TablerIcons.eye_closed : TablerIcons.eye,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                onPressed: () => setState(() => _obscureText = !_obscureText),
              )
            : null,
      ),
    ).constrained(maxWidth: responsiveWidth);
  }

  List<TextInputFormatter> get _inputFormatters {
    switch (widget.fieldType) {
      case AppTextFieldType.number:
        return [FilteringTextInputFormatter.digitsOnly];
      case AppTextFieldType.email:
        return [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._+-]'))];
      case AppTextFieldType.password:
        return [FilteringTextInputFormatter.singleLineFormatter];
      case AppTextFieldType.address:
        return [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9.\-/\s]'))];
      case AppTextFieldType.identity:
        return [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9-]'))];
      default:
        return <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9 ]'))];
    }
  }
}
