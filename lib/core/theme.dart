import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// --- Typography ---
final _primaryFont = GoogleFonts.spaceGrotesk;
final _secondaryFont = GoogleFonts.dmSans;

// This file contains the ThemeData for both the light and dark themes of the application.
// The colors, typography, and shapes are defined based on the design principles
// outlined in the mobile app structure document.

// --- Color Palette ---
// These are the specific colors used for the light and dark themes.
// Using a consistent naming convention helps in maintaining clarity.
final class _AppColors {
  const _AppColors._();

  // Light Theme Colors
  static const Color lightPrimary = Color(0xFF007BFF); // A professional deep blue.
  static const Color lightAccent = Color(0xFF00CFFF); // A light, contrasting blue.
  static const Color lightBackground = Color(0xFFF0F2F5); // A soft gray for backgrounds.
  static const Color lightSurface = Color(0xFFFFFFFF); // White for cards and surfaces.
  static const Color lightTextPrimary = Color(0xFF212529); // Dark gray for primary text.
  static const Color lightTextSecondary = Color(0xFF6C757D); // Lighter gray for secondary text.
  static const Color lightError = Color(0xFFDC3545); // Red for error states.
  // static const Color lightSuccess = Color(0xFF28A745); // Green for success states.

  // Dark Theme Colors
  static const Color darkPrimary = Color(0xFF0D6EFD); // A slightly lighter blue for dark mode.
  static const Color darkAccent = Color(0xFF00CFFF); // Same accent for consistency.
  static const Color darkBackground = Color(0xFF121212); // A very dark gray.
  static const Color darkSurface = Color(0xFF1E1E1E); // A slightly lighter gray for surfaces.
  static const Color darkTextPrimary = Color(0xFFE0E0E0); // Light gray for primary text.
  static const Color darkTextSecondary = Color(0xFFB0B0B0); // Lighter gray for secondary text.
  static const Color darkError = Color(0xFFEF476F); // A slightly brighter red.
  // static const Color darkSuccess = Color(0xFF38B000); // A slightly brighter green.
}

// --- App Theme Class ---
// This class provides the static methods to get the ThemeData for each mode.
final class AppTheme {
  const AppTheme._();

  // Common theme properties like border radius and font family.
  static const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(12.0));

  // Note: To use a custom font like Poppins or Inter, you'll need to
  // add it to your pubspec.yaml and define the `fontFamily` here.
  // const String _fontFamily = 'Inter';

  // --- Light Theme ---
  static ThemeData lightTheme() {
    return ThemeData.light(useMaterial3: true).copyWith(
      // --- Color Scheme ---
      brightness: Brightness.light,
      primaryColor: _AppColors.lightPrimary,
      scaffoldBackgroundColor: _AppColors.lightBackground,
      cardColor: _AppColors.lightSurface,
      colorScheme: const ColorScheme.light(
        primary: _AppColors.lightPrimary,
        secondary: _AppColors.lightAccent,
        surface: _AppColors.lightSurface,
        surfaceContainer: _AppColors.lightBackground,
        error: _AppColors.lightError,
      ),

      // --- Typography ---
      textTheme: TextTheme(
        // Use a generic sans-serif font for simplicity in this example.
        // Replace with your chosen font family.
        displayLarge: _primaryFont(fontSize: 57, fontWeight: FontWeight.w400, color: _AppColors.lightTextPrimary),
        headlineMedium: _primaryFont(fontWeight: FontWeight.w600, color: _AppColors.lightTextPrimary),
        headlineLarge: _primaryFont(fontSize: 32, fontWeight: FontWeight.bold, color: _AppColors.lightTextPrimary),
        titleLarge: _primaryFont(fontSize: 22, fontWeight: FontWeight.bold, color: _AppColors.lightTextPrimary),
        bodyLarge: _secondaryFont(fontSize: 16, fontWeight: FontWeight.normal, color: _AppColors.lightTextPrimary),
        bodyMedium: _secondaryFont(fontSize: 14, fontWeight: FontWeight.normal, color: _AppColors.lightTextSecondary),
        labelSmall: _secondaryFont(fontSize: 11, fontWeight: FontWeight.w500, color: _AppColors.lightTextSecondary),
      ),

      // --- Component Shapes & Styles ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _AppColors.lightSurface,
          backgroundColor: _AppColors.lightPrimary,
          shape: const RoundedRectangleBorder(borderRadius: _borderRadius),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _AppColors.lightPrimary,
          shape: const RoundedRectangleBorder(borderRadius: _borderRadius),
        ),
      ),
      cardTheme: const CardThemeData(shape: RoundedRectangleBorder(borderRadius: _borderRadius), elevation: 2),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: _borderRadius),
        contentPadding: const EdgeInsets.all(16.0),
        filled: true,
        fillColor: _AppColors.lightBackground,
      ),
    );
  }

  // --- Dark Theme ---
  static ThemeData darkTheme() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      // --- Color Scheme ---
      brightness: Brightness.dark,
      primaryColor: _AppColors.darkPrimary,
      scaffoldBackgroundColor: _AppColors.darkBackground,
      cardColor: _AppColors.darkSurface,
      colorScheme: const ColorScheme.dark(
        primary: _AppColors.darkPrimary,
        secondary: _AppColors.darkAccent,
        surface: _AppColors.darkSurface,
        surfaceContainer: _AppColors.darkBackground,
        error: _AppColors.darkError,
      ),

      // --- Typography ---
      textTheme: TextTheme(
        displayLarge: _primaryFont(fontSize: 57, fontWeight: FontWeight.w400, color: _AppColors.darkTextPrimary),
        headlineMedium: _primaryFont(fontWeight: FontWeight.w600, color: _AppColors.darkTextPrimary),
        headlineLarge: _primaryFont(fontSize: 32, fontWeight: FontWeight.bold, color: _AppColors.darkTextPrimary),
        titleLarge: _primaryFont(fontSize: 22, fontWeight: FontWeight.bold, color: _AppColors.darkTextPrimary),
        bodyLarge: _secondaryFont(fontSize: 16, fontWeight: FontWeight.normal, color: _AppColors.darkTextPrimary),
        bodyMedium: _secondaryFont(fontSize: 14, fontWeight: FontWeight.normal, color: _AppColors.darkTextSecondary),
        labelSmall: _secondaryFont(fontSize: 11, fontWeight: FontWeight.w500, color: _AppColors.darkTextSecondary),
      ),

      // --- Component Shapes & Styles ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _AppColors.darkBackground,
          backgroundColor: _AppColors.darkPrimary,
          shape: const RoundedRectangleBorder(borderRadius: _borderRadius),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _AppColors.darkPrimary,
          shape: const RoundedRectangleBorder(borderRadius: _borderRadius),
        ),
      ),
      cardTheme: const CardThemeData(shape: RoundedRectangleBorder(borderRadius: _borderRadius), elevation: 2),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: _borderRadius),
        contentPadding: const EdgeInsets.all(16.0),
        filled: true,
        fillColor: _AppColors.darkSurface,
      ),
    );
  }
}
