import 'package:flutter/material.dart';
import '../../core/theme/dynamic_theme/colors.dart';
import 'customtext.dart';

class LoadingAndError extends StatelessWidget {
  const LoadingAndError(
      {Key? key,
      required this.isError,
      required this.isLoading,
      required this.child})
      : super(key: key);
  final bool isError;
  final bool isLoading;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (
      context,
    ) {
      if (isError) {
        return Center(
          child: CustomText(
            'يوجد مشكله فى البيانات',
            fontsize: 18,
            color: AppColors.primary,
          ),
        );
      } else if (isLoading) {
        return Material(
          color: AppColors.background,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return child;
      }
    });
  }
}
