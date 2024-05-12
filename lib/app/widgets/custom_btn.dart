import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget child;
  final Function()? onPressed;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? elevation;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final BorderSide? side;

  const PrimaryBtn({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.onPressed,
    this.borderRadius,
    this.style,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    required this.child,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          textStyle: style ??
              theme.textTheme.labelLarge
                  ?.copyWith(color: foregroundColor ?? Colors.white),
          disabledBackgroundColor: theme.primaryColor.withOpacity(.2),
          disabledForegroundColor: Colors.white,
          backgroundColor: backgroundColor ?? theme.primaryColor,
          foregroundColor: foregroundColor ?? Colors.white,
          splashFactory: NoSplash.splashFactory,
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.sp),
          ),
          // ****** Border color *******
          side: side
          //  BorderSide(
          //   color: theme.disabledColor,
          //   width: 2,
          // ),
          ),
      child: child,
    );
  }
}

class OutLineBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget child;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  const OutLineBtn(
      {super.key,
      this.backgroundColor,
      this.borderColor,
      this.foregroundColor,
      this.onPressed,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.textStyle,
      required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            foregroundColor:foregroundColor?? theme.primaryColor,
            side: BorderSide(
                width: 1,
                color: borderColor ??
                    (onPressed == null
                        ? theme.disabledColor
                        : theme.primaryColor)),
            backgroundColor: backgroundColor ?? Colors.transparent,
            
            disabledForegroundColor: theme.disabledColor,
            disabledBackgroundColor: theme.disabledColor.withOpacity(.5),
            textStyle: textStyle,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 16.r), // Change the border radius value
            ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}

// class GradientBtn extends StatelessWidget {
//   const GradientBtn({
//     super.key,
//     required this.text,
//     this.onTap,
//   });

//   final String text;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 130,
//         padding: const EdgeInsets.symmetric(
//           vertical: 13,
//         ),
//         decoration: BoxDecoration(
//           gradient: onTap == null
//               ? const LinearGradient(
//                   colors: [
//                     Color(0xffC2C2C2),
//                     Color(0xffC2C2C2)
//                   ], // Define your gradient colors
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 )
//               : const LinearGradient(
//                   colors: [
//                     Color(0xff9F9F9F),
//                     Color(0xff9F9F9F)
//                   ], // Define your gradient colors
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//           borderRadius:
//               BorderRadius.circular(50), // Optional: Add border radius
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: theme.textTheme.labelMedium,
//           ),
//         ),
//       ),
//     );
//   }
// }
