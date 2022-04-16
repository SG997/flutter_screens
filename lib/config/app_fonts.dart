import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppFonts {
  ///200
  static TextStyle get heeboThin {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w200,
    );
  }

  ///300
  static TextStyle get heeboLight {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w300,
    );
  }

  ///400
  static TextStyle get heeboNormal {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w400,
    );
  }

  ///500
  static TextStyle get heeboMedium {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w500,
    );
  }

  ///600
  static TextStyle get heeboSemiBold {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w600,
    );
  }

  ///700
  static TextStyle get heeboBold {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w700,
    );
  }

  ///800
  static TextStyle get heeboExtraBold {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w800,
    );
  }

  ///900
  static TextStyle get heeboBlack {
    return GoogleFonts.heebo(
      fontWeight: FontWeight.w900,
    );
  }

  ///600
  static TextStyle get assistantSemiBold {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w600,
    );
  }

  ///700
  static TextStyle get assistantExtraBold {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w800,
    );
  }

  ///700
  static TextStyle get assistantBold {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w700,
    );
  }

  ///500
  static TextStyle get assistantMedium {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w500,
    );
  }

  ///400
  static TextStyle get assistantNormal {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w400,
    );
  }

  ///300
  static TextStyle get assistantLight {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w300,
    );
  }

  ///200
  static TextStyle get assistantExtraLight {
    return GoogleFonts.assistant(
      fontWeight: FontWeight.w200,
    );
  }

  ///600
  static TextStyle get openSansBold {
    return GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
    );
  }
}

extension TextStyleExtension on TextStyle {
  TextStyle withParams({
    Color? color,
    double? fontSize,
    double? height,
    double? letterSpacing,
    TextDecoration? decoration,
    double? decorationThickness,
  }) {
    return copyWith(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
      height: height ?? this.height,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      decoration: decoration,
      decorationThickness: decorationThickness,
    );
  }
}
