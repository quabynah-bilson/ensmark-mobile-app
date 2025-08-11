import 'package:intl/intl.dart';
import 'package:mobile/core/constants.dart';

/// A mixin that provides common validation methods for form fields.
///
/// This can be used with any stateful widget that manages a form
/// to keep validation logic clean and reusable.
mixin ValidationMixin {
  /// Validates that a field is not empty.
  ///
  /// Can be used for any required text field or selector.
  /// Returns an error message if the value is null or empty.
  String? validateRequired(String? value, {String message = 'This field is required'}) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }
    return null;
  }

  /// Validates an email address for correct format.
  ///
  /// Checks for the presence of '@' and a domain part.
  String? validateEmail(String? value, {String message = 'Please enter a valid email address'}) {
    final requiredValidation = validateRequired(value);
    if (requiredValidation != null) {
      return requiredValidation;
    }
    // A simple regex for email validation.
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value!)) {
      return message;
    }
    return null;
  }

  /// Validates a password for minimum length.
  String? validatePassword(String? value, {int minLength = 6}) {
    final requiredValidation = validateRequired(value);
    if (requiredValidation != null) {
      return requiredValidation;
    }
    if (value!.length < minLength) {
      return 'Password must be at least $minLength characters long';
    }
    return null;
  }

  String? validatePhoneNumber(String? value, {int minLength = 10, int maxLength = 15}) {
    if (value!.length < minLength || value.length > maxLength) {
      return 'Phone number must be between $minLength and $maxLength characters long';
    }
    return null;
  }

  String? validateDate(String? value, {String message = 'Please enter a valid date'}) {
    final requiredValidation = validateRequired(value);
    if (requiredValidation != null) {
      return requiredValidation;
    }
    final parsed = DateFormat(AppConstants.preferredDatePattern).tryParse(value!);
    if (parsed == null) return message;
    return null;
  }

  /// Validates that two fields (e.g., password and confirm password) match.
  String? validateMatchingFields(String? value, String? otherValue, {String message = 'Fields do not match'}) {
    final requiredValidation = validateRequired(value);
    if (requiredValidation != null) {
      return requiredValidation;
    }
    final passwordValidation = validatePassword(value);
    if (passwordValidation != null) {
      return passwordValidation;
    }
    if (value != otherValue) {
      return message;
    }
    return null;
  }

  /// A utility to combine multiple validators for a single field.
  ///
  /// Example:
  /// ```dart
  /// validator: (value) => combineValidators(value, [
  ///   () => validateRequired(value),
  ///   () => validateEmail(value),
  /// ]),
  /// ```
  String? combineValidators(String? value, List<String? Function(String?)> validators) {
    for (final validator in validators) {
      final result = validator(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
