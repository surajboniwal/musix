import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musix/presentation/theme/colors.dart';

class AppThemes {
  static ThemeData appTheme(BuildContext context) => ThemeData(
        primaryColor: AppColors.primaryColor,
        textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
        ),
      );
}
