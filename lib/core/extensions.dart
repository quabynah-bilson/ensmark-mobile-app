import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  EdgeInsetsGeometry get padding => MediaQuery.of(this).viewPadding;

  TextTheme get textTheme => theme.textTheme;
}
