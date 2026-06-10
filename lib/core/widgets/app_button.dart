import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

enum AppButtonVariant { primary, secondary, outline, ghost }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.isLoading = false,
    this.icon,
    this.width,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final bool isLoading;
  final Widget? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    ButtonStyle style;
    Color? foreground;

    switch (variant) {
      case AppButtonVariant.primary:
        style = ElevatedButton.styleFrom(
          backgroundColor: AppColors.astraBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        );
        foreground = Colors.white;
      case AppButtonVariant.secondary:
        style = ElevatedButton.styleFrom(
          backgroundColor: AppColors.astraBlue50,
          foregroundColor: AppColors.astraBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        );
        foreground = AppColors.astraBlue;
      case AppButtonVariant.outline:
        style = OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.astraBlue),
          foregroundColor: AppColors.astraBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        );
        foreground = AppColors.astraBlue;
      case AppButtonVariant.ghost:
        style = TextButton.styleFrom(
          foregroundColor: AppColors.astraBlue,
          padding: const EdgeInsets.symmetric(vertical: 16),
        );
        foreground = AppColors.astraBlue;
    }

    final child = isLoading
        ? SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: foreground ?? AppColors.white,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[icon!, const SizedBox(width: 8)],
              Text(label),
            ],
          );

    return SizedBox(
      width: width ?? double.infinity,
      child: switch (variant) {
        AppButtonVariant.outline => OutlinedButton(
            style: style,
            onPressed: isLoading ? null : onPressed,
            child: child,
          ),
        AppButtonVariant.ghost => TextButton(
            style: style,
            onPressed: isLoading ? null : onPressed,
            child: child,
          ),
        _ => ElevatedButton(
            style: style,
            onPressed: isLoading ? null : onPressed,
            child: child,
          ),
      },
    );
  }
}
