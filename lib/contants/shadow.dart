import 'package:flutter/material.dart';
import 'package:noise_mix/contants/colors.dart';

/// Defines the shadow for the App UI Kit.
abstract class AppShadow {
  static BoxShadow vShadow() {
    return BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: 12,
      // spreadRadius: 10,
      color: AppColors.vBlack.withOpacity(0.08),
    );
  }

  static BoxShadow vShadow4() {
    return const BoxShadow(
      offset: Offset(2, 4),
      blurRadius: 5,
      // spreadRadius: 10,
      color: AppColors.vShadow,
    );
  }

  static BoxShadow vShadow8() {
    return const BoxShadow(
      offset: Offset(4, 8),
      blurRadius: 5,
      color: AppColors.vShadow,
    );
  }

  static BoxShadow vShadow4Revert() {
    return const BoxShadow(
      offset: Offset(-2, 4),
      blurRadius: 5,
      color: AppColors.vShadow,
    );
  }
}
