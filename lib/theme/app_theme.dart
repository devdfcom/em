import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme({required this.sourceColor});

  ///Source color
  final Color sourceColor;

  ///Detect which color scheme to use
  ColorScheme colors(bool isDark) {
    final brightness = isDark ? Brightness.dark : Brightness.light;
    return ColorScheme.fromSeed(seedColor: sourceColor, brightness: brightness);
  }

  ThemeData _buildTheme({bool isDark = false}) {
    final colorScheme = colors(isDark);
    final typography = isDark
        ? Typography.material2021(colorScheme: colorScheme).white
        : Typography.material2021(colorScheme: colorScheme).black;

    ///From 3.16.0 version of flutter, [useMaterial3] by default is true
    final baseTheme = isDark ? ThemeData.dark() : ThemeData.light();
    //final textTheme = textThemeData(typography.apply(fontFamily: 'ProductSans'), colorScheme);

    return baseTheme.copyWith(
      colorScheme: colorScheme,
      textTheme: typography,
      appBarTheme: appBarTheme(colorScheme, typography),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(colorScheme),
      // bottomAppBarTheme: bottomAppBarTheme(colorScheme),
      //bottomNavigationBarTheme: bottomNavigationBarTheme(colorScheme),
      bottomSheetTheme: bottomSheetTheme(colorScheme),
      //navigationBarTheme: navigationBarTheme(colorScheme, textTheme),
      //navigationDrawerTheme: navigationDrawerTheme(isDark, colorScheme, textTheme),
      navigationRailTheme: navigationRailTheme(colorScheme),
      tabBarTheme: tabBarTheme(colorScheme),
      drawerTheme: drawerTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.background,
      //dialogTheme: dialogTheme(textTheme),
      //extensions: <ThemeExtension<dynamic>>[customColorsExt],
    );
  }

  ThemeData light() => _buildTheme();

  ThemeData dark() => _buildTheme(isDark: true);

  ShapeBorder get shapeMedium => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      );

  CardTheme cardTheme() => CardTheme(
        elevation: 3,
        shape: shapeMedium,
      );

  ListTileThemeData listTileTheme(ColorScheme colors) => ListTileThemeData(
        shape: shapeMedium,
        selectedColor: colors.secondary,
      );

  AppBarTheme appBarTheme(ColorScheme colors, TextTheme text) {
    return AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: colors.primary,
      titleTextStyle: text.displayLarge!.copyWith(color: colors.onSurface),
      surfaceTintColor: Colors.transparent,
    );
  }

  /// Used in estate add property
  TabBarTheme tabBarTheme(ColorScheme colors) {
    return TabBarTheme(
      dividerColor: Colors.transparent,
      labelColor: colors.primary,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelColor: colors.outline,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colors.primary),
      ),
      overlayColor: MaterialStateProperty.all<Color>(colors.secondaryContainer),
    );
  }

  NavigationRailThemeData navigationRailTheme(ColorScheme colors) {
    return const NavigationRailThemeData();
  }

  DrawerThemeData drawerTheme(ColorScheme colors) => DrawerThemeData(
        backgroundColor: colors.surface,
        elevation: 3,
      );

  BottomSheetThemeData bottomSheetTheme(ColorScheme colors) {
    return BottomSheetThemeData(
      backgroundColor: colors.background.withOpacity(0.12),
      modalBackgroundColor: colors.background, //.withOpacity(0.7)
    );
  }

  DialogTheme dialogTheme(TextTheme textTheme) {
    return DialogTheme(
      contentTextStyle: textTheme.bodyLarge,
      actionsPadding: EdgeInsets.zero,
    );
  }

  // TextTheme textThemeData(TextTheme typography, ColorScheme colors) {
  //   return typography.copyWith(
  //     displayLarge: typography.displayLarge?.copyWith(fontSize: App.font.displayLarge),
  //     displayMedium: typography.displayMedium?.copyWith(fontSize: App.font.displayMedium),
  //     displaySmall: typography.displaySmall?.copyWith(fontSize: App.font.displaySmall),
  //     headlineLarge: typography.headlineLarge?.copyWith(fontSize: App.font.headlineLarge),
  //     headlineMedium: typography.headlineMedium?.copyWith(fontSize: App.font.headlineMedium),
  //     headlineSmall: typography.headlineSmall?.copyWith(fontSize: App.font.headlineSmall),
  //     titleLarge: typography.titleLarge?.copyWith(fontSize: App.font.titleLarge),
  //     titleMedium: typography.titleMedium?.copyWith(fontSize: App.font.bodyLarge),
  //     titleSmall: typography.titleSmall?.copyWith(fontSize: App.font.bodyMedium),
  //     labelLarge: typography.labelLarge?.copyWith(fontSize: App.font.bodyMedium),
  //     labelMedium: typography.labelMedium?.copyWith(fontSize: App.font.bodySmall),
  //     labelSmall: typography.labelSmall?.copyWith(fontSize: App.font.labelSmall),
  //     bodyLarge: typography.bodyLarge?.copyWith(fontSize: App.font.bodyLarge),
  //     bodyMedium: typography.bodyMedium?.copyWith(fontSize: App.font.bodyMedium),
  //     bodySmall: typography.bodySmall?.copyWith(fontSize: App.font.bodySmall),
  //   );
  // }
}
