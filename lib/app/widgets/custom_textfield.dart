import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/int_extensions.dart';

// class CustomTextField extends StatefulWidget {
//   final TextEditingController? controller;
//   final String prefixUrl;
//   final bool isShowHideBTN;
//   final bool? obscureText;
//   final bool? readOnly;
//   final Widget? suffixIconColor;
//   final Widget? prefixIcon;
//   final String? hintText;
//   final Widget? label;
//   final String? extraLabel;
//   final TextStyle? labelStyle;
//   final TextStyle? extraLabelStyle;
//   final TextStyle? errorStyle;
//   final Color? fillColor;
//   final VoidCallback? onTap;
//   final AutovalidateMode? autovalidateMode;
//   final TextInputType? keyboardType;
//   final String? Function(String?)? validator;
//   final Function(String)? onChange;
//   final EdgeInsetsGeometry? padding;
//   final Color? cursorColor;
//   final TextAlign? textAlign;
//   final double? fontSize;
//   final List<TextInputFormatter>? inputFormatters;
//   final bool? autofocus;
//   final FocusNode? focusNode;
//   final TextStyle? style;
//   final String? errorText;
//   final VoidCallback? onEditingComplete;
//   final int? maxLines;
//   final double? marginBottom;

//   const CustomTextField({
//     super.key,
//     this.controller,
//     this.obscureText,
//     this.readOnly,
//     this.prefixIcon,
//     this.hintText,
//     this.label,
//     this.onTap,
//     this.autovalidateMode,
//     this.keyboardType,
//     this.validator,
//     this.onChange,
//     this.padding,
//     this.cursorColor,
//     this.inputFormatters,
//     this.autofocus,
//     this.textAlign,
//     this.fontSize,
//     this.style,
//     this.errorText,
//     this.onEditingComplete,
//     this.maxLines,
//     this.suffixIconColor,
//     this.extraLabel,
//     this.extraLabelStyle,
//     this.labelStyle,
//     this.errorStyle,
//     this.focusNode,
//     this.marginBottom,
//     this.fillColor,
//     required this.prefixUrl,
//     this.isShowHideBTN = false,
//   });

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   final FocusNode _focusNode = FocusNode();
//   late bool _isShowPasss = widget.obscureText ?? false;

//   @override
//   void initState() {
//     super.initState();
//     _focusNode.addListener(_onFocusChange);
//   }

//   @override
//   void dispose() {
//     _focusNode.removeListener(_onFocusChange);
//     _focusNode.dispose();
//     super.dispose();
//   }

//   void _onFocusChange() {
//     setState(() {});
//   }

//   void _onobscureTextChange() {
//     setState(() {
//       _isShowPasss = !_isShowPasss;
//     });
//   }

//   @override
//   Widget build(BuildContext context) => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ********** extraLabel ********
//           if (widget.extraLabel != null)
//             Text(
//               widget.extraLabel ?? "",
//               style: widget.extraLabelStyle ?? kBodyLarge,
//             ),
//           if (widget.extraLabel != null)
//             const SizedBox(
//               height: 10,
//             ),
//           TextFormField(
//             // ********** controller ********
//             controller: widget.controller,
//             // ********** validator ********
//             validator: widget.validator,
//             // ********** onChanged ********
//             onChanged: widget.onChange,

//             // ********** obscureText ********
//             obscureText: widget.obscureText ?? _isShowPasss,

//             // ********** readOnly ********
//             readOnly: widget.readOnly ?? false,
//             // ********** autovalidateMode ********
//             autovalidateMode: widget.autovalidateMode,
//             // ********** cursorColor ********
//             cursorColor: widget.cursorColor ?? kPrimaryColor,
//             // ********** maxLines ********
//             maxLines: widget.maxLines ?? 1,
//             // ********** autofocus ********
//             autofocus: widget.autofocus ?? false,
//             // ********** textAlign ********
//             textAlign: widget.textAlign ?? TextAlign.start,
//             // ********** onTap ********
//             // ********** style ********
//             style: _focusNode.hasFocus
//                 ? kBodyLarge
//                 : kBodyLarge.copyWith(color: kDisabledTextColor),
//             // ********** controller ********
//             onEditingComplete: widget.onEditingComplete,
//             // ********** keyboardType ********
//             keyboardType: widget.keyboardType,

//             focusNode: _focusNode,
//             //! ********** decoration ********
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: _focusNode.hasFocus
//                   ? kPrimaryColor.withOpacity(.1)
//                   : kDisabledColor.withOpacity(.3),
//               // ********** errorText ********
//               errorText: widget.errorText,
//               errorStyle:
//                   widget.errorStyle ?? kBodyLarge.copyWith(color: kDangerColor),
//               errorMaxLines: 5,
//               // ********** padding ********

//               contentPadding: widget.padding ??
//                   const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//               // ********** prefixIcon ********
//               prefixIcon: SizedBox(
//                 width: 10,
//                 // color: Colors.red,
//                 child: Center(
//                   child: SvgPicture.asset(
//                     widget.prefixUrl,
//                     color: _focusNode.hasFocus
//                         ? kPrimaryColor
//                         : kDisabledTextColor,
//                   ),
//                 ),
//               ),
//               // ********** suffixIcon ********
//               suffixIcon: widget.isShowHideBTN == true
//                   ? GestureDetector(
//                       onTap: _onobscureTextChange,
//                       child: SizedBox(
//                         width: 10,
//                         child: Center(
//                           child: SvgPicture.asset(
//                             _isShowPasss
//                                 ? "assets/icons/auth/Show.svg"
//                                 : "assets/icons/auth/Hide.svg",
//                             color: _focusNode.hasFocus
//                                 ? kPrimaryColor
//                                 : kDisabledTextColor,
//                           ),
//                         ),
//                       ),
//                     )
//                   : null,
//               // ********** border ********
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(color: kDisabledColor)),
//               // ********** focusedBorder ********
//               focusColor: kPrimaryColor,
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide:  BorderSide(color: kPrimaryColor)),
//               // ********** enabledBorder ********
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(color: kDisabledColor)),
//               // ********** errorBorder ********
//               errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(color: kDangerColor)),
//               // ********** hintText ********
//               hintText: widget.hintText,
//               hintStyle: kBodyLarge.copyWith(color: kTextColorLight),
//               // ********** label ********
//               label: widget.label,
//               labelStyle: widget.labelStyle ?? kBodyLarge,
//             ),
//             // ********** inputFormatters ********
//             inputFormatters: widget.inputFormatters ??
//                 [LengthLimitingTextInputFormatter(40)],
//           ),
//           // ********** marginBottom ********
//           SizedBox(
//             height: widget.marginBottom ?? 16,
//           )
//         ],
//       );
// }

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final String? extraLabel;
  final TextStyle? labelStyle;
  final TextStyle? extraLabelStyle;
  final TextStyle? errorStyle;
  final VoidCallback? onTap;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;

  final TextStyle? style;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLines;
  final double? marginBottom;

  const CustomTextField(
      {super.key,
      this.controller,
      this.obscureText,
      this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.label,
      this.onTap,
      this.autovalidateMode,
      this.keyboardType,
      this.validator,
      this.onChange,
      this.padding,
      this.cursorColor,
      this.inputFormatters,
      this.autofocus,
      this.textAlign,
      this.fontSize,
      this.style,
      this.errorText,
      this.onEditingComplete,
      this.maxLines,
      this.suffixIconColor,
      this.extraLabel,
      this.extraLabelStyle,
      this.labelStyle,
      this.errorStyle,
      this.marginBottom});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ********** extraLabel ********
        if (extraLabel != null)
          Text(
            extraLabel ?? "",
            style: extraLabelStyle ?? theme.textTheme.labelSmall,
          ),
        if (extraLabel != null)
          const SizedBox(
            height: 6,
          ),
        TextFormField(
          // ********** controller ********
          controller: controller,
          // ********** validator ********
          validator: validator,
          // ********** onChanged ********
          onChanged: onChange,
          // ********** obscureText ********
          obscureText: obscureText ?? false,
          // ********** readOnly ********
          readOnly: readOnly ?? false,
          // ********** autovalidateMode ********
          autovalidateMode: autovalidateMode,
          // ********** cursorColor ********
          cursorColor: cursorColor ?? theme.primaryColor,
          // ********** maxLines ********
          maxLines: maxLines ?? 1,
          // ********** autofocus ********
          autofocus: autofocus ?? false,
          // ********** textAlign ********
          textAlign: textAlign ?? TextAlign.start,
          // ********** onTap ********
          onTap: onTap,
          // ********** style ********
          style: style ?? theme.textTheme.labelMedium,
          // ********** controller ********
          onEditingComplete: onEditingComplete,
          // ********** keyboardType ********
          keyboardType: keyboardType,
          //! ********** decoration ********
          decoration: InputDecoration(
            // filled: true,
            // fillColor: kDisabledColor.withOpacity(.6),
            // ********** errorText ********
            errorText: errorText,
            errorStyle: errorStyle ??
                theme.textTheme.labelMedium?.copyWith(color: Colors.red),
            errorMaxLines: 5,
            // ********** padding ********

            contentPadding: padding ??
                const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            // ********** prefixIcon ********
            prefixIcon: prefixIcon,
            // ********** suffixIcon ********
            suffixIcon: suffixIcon,
            // ********** border ********
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** focusedBorder ********
            focusColor: theme.primaryColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** enabledBorder ********
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** errorBorder ********
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** hintText ********
            hintText: hintText,
            hintStyle:
                theme.textTheme.labelMedium?.copyWith(color: theme.hintColor),
            // ********** label ********
            label: label,
            labelStyle: labelStyle ?? theme.textTheme.labelMedium,
          ),
          // ********** inputFormatters ********
          inputFormatters:
              inputFormatters ?? [LengthLimitingTextInputFormatter(40)],
        ),
        // ********** marginBottom ********
        SizedBox(
          height: marginBottom ?? 16,
        )
      ],
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final String? extraLabel;
  final TextStyle? labelStyle;
  final TextStyle? extraLabelStyle;
  final TextStyle? errorStyle;
  final VoidCallback? onTap;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final Color? fillColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;
  final double? borderRadius;
  final TextStyle? style;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLines;
  final double? marginBottom;

  const CustomSearchTextField(
      {super.key,
      this.controller,
      this.obscureText,
      this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.label,
      this.onTap,
      this.autovalidateMode,
      this.keyboardType,
      this.validator,
      this.onChange,
      this.padding,
      this.cursorColor,
      this.inputFormatters,
      this.autofocus,
      this.textAlign,
      this.fontSize,
      this.style,
      this.errorText,
      this.onEditingComplete,
      this.maxLines,
      this.suffixIconColor,
      this.extraLabel,
      this.extraLabelStyle,
      this.labelStyle,
      this.errorStyle,
      this.marginBottom,
      this.borderRadius, this.fillColor});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ********** extraLabel ********
        if (extraLabel != null)
          Text(
            extraLabel ?? "",
            style: extraLabelStyle ?? theme.textTheme.labelSmall,
          ),
        if (extraLabel != null)
          const SizedBox(
            height: 6,
          ),
        TextFormField(
          // ********** controller ********
          controller: controller,
          // ********** validator ********
          validator: validator,
          // ********** onChanged ********
          onChanged: onChange,
          // ********** obscureText ********
          obscureText: obscureText ?? false,
          // ********** readOnly ********
          readOnly: readOnly ?? false,
          // ********** autovalidateMode ********
          autovalidateMode: autovalidateMode,
          // ********** cursorColor ********
          cursorColor: cursorColor ?? theme.primaryColor,
          // ********** maxLines ********
          maxLines: maxLines ?? 1,
          // ********** autofocus ********
          autofocus: autofocus ?? false,
          // ********** textAlign ********
          textAlign: textAlign ?? TextAlign.start,
          // ********** onTap ********
          onTap: onTap,
          // ********** style ********
          style: style ?? theme.textTheme.labelMedium,
          // ********** controller ********
          onEditingComplete: onEditingComplete,
          // ********** keyboardType ********
          keyboardType: keyboardType,
          //! ********** decoration ********
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? theme.dividerColor.withOpacity(.1),
            // ********** errorText ********
            errorText: errorText,
            errorStyle: errorStyle ??
                theme.textTheme.labelMedium?.copyWith(color: Colors.red),
            errorMaxLines: 5,
            // ********** padding ********

            contentPadding: padding ??
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            // ********** prefixIcon ********
            prefixIcon: prefixIcon ??
                Icon(
                  IconlyLight.search,
                  color: theme.hintColor,
                ),
            // ********** suffixIcon ********
            suffixIcon: suffixIcon,
            // ********** border ********
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
                borderSide: BorderSide.none),
            // ********** focusedBorder ********
            focusColor: theme.primaryColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
                borderSide: BorderSide.none),
            // ********** enabledBorder ********
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
                borderSide: BorderSide.none),
            // ********** errorBorder ********
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
                borderSide: BorderSide.none),
            // ********** hintText ********
            hintText: hintText ?? "Search...",
            hintStyle:
                theme.textTheme.labelMedium?.copyWith(color: theme.hintColor),
            // ********** label ********
            label: label,
            labelStyle: labelStyle ?? theme.textTheme.labelLarge,
          ),
          // ********** inputFormatters ********
          inputFormatters:
              inputFormatters ?? [LengthLimitingTextInputFormatter(40)],
        ),
      ],
    );
  }
}

class CustomPassWordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final String? extraLabel;
  final TextStyle? labelStyle;
  final TextStyle? extraLabelStyle;
  final TextStyle? errorStyle;
  final VoidCallback? onTap;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;

  final TextStyle? style;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLines;
  final double? marginBottom;

  const CustomPassWordTextField(
      {super.key,
      this.controller,
      this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.label,
      this.onTap,
      this.autovalidateMode,
      this.keyboardType,
      this.validator,
      this.onChange,
      this.padding,
      this.cursorColor,
      this.inputFormatters,
      this.autofocus,
      this.textAlign,
      this.fontSize,
      this.style,
      this.errorText,
      this.onEditingComplete,
      this.maxLines,
      this.suffixIconColor,
      this.extraLabel,
      this.extraLabelStyle,
      this.labelStyle,
      this.errorStyle,
      this.marginBottom});

  @override
  State<CustomPassWordTextField> createState() =>
      _CustomPassWordTextFieldState();
}

class _CustomPassWordTextFieldState extends State<CustomPassWordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ********** extraLabel ********
        if (widget.extraLabel != null)
          Text(
            widget.extraLabel ?? "",
            style: widget.extraLabelStyle ?? theme.textTheme.labelSmall,
          ),
        if (widget.extraLabel != null)
          const SizedBox(
            height: 6,
          ),
        TextFormField(
          // ********** controller ********
          controller: widget.controller,
          // ********** validator ********
          validator: widget.validator,
          // ********** onChanged ********
          onChanged: widget.onChange,
          // ********** obscureText ********
          obscureText: obscureText,
          // ********** readOnly ********
          readOnly: widget.readOnly ?? false,
          // ********** autovalidateMode ********
          autovalidateMode: widget.autovalidateMode,
          // ********** cursorColor ********
          cursorColor: widget.cursorColor ?? theme.primaryColor,
          // ********** maxLines ********
          maxLines: widget.maxLines ?? 1,
          // ********** autofocus ********
          autofocus: widget.autofocus ?? false,
          // ********** textAlign ********
          textAlign: widget.textAlign ?? TextAlign.start,
          // ********** onTap ********
          onTap: widget.onTap,
          // ********** style ********
          style: widget.style ?? theme.textTheme.labelMedium,
          // ********** controller ********
          onEditingComplete: widget.onEditingComplete,
          // ********** keyboardType ********
          keyboardType: widget.keyboardType,
          //! ********** decoration ********
          decoration: InputDecoration(
            // filled: true,
            // fillColor: kDisabledColor.withOpacity(.6),
            // ********** errorText ********
            errorText: widget.errorText,
            errorStyle: widget.errorStyle ??
                theme.textTheme.labelMedium?.copyWith(color: Colors.red),
            errorMaxLines: 5,
            // ********** padding ********

            contentPadding: widget.padding ??
                const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            // ********** prefixIcon ********
            prefixIcon: widget.prefixIcon,
            // ********** suffixIcon ********
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              splashColor: theme.cardColor,
              borderRadius: BorderRadius.circular(800),
              child: obscureText
                  ? const Icon(Iconsax.eye)
                  : const Icon(Iconsax.eye_slash),
            ),
            // ********** border ********
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** focusedBorder ********
            focusColor: theme.primaryColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** enabledBorder ********
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** errorBorder ********
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: theme.hintColor)),
            // ********** hintText ********
            hintText: widget.hintText,
            hintStyle:
                theme.textTheme.labelMedium?.copyWith(color: theme.hintColor),
            // ********** label ********
            label: widget.label,
            labelStyle: widget.labelStyle ?? theme.textTheme.labelMedium,
          ),
          // ********** inputFormatters ********
          inputFormatters:
              widget.inputFormatters ?? [LengthLimitingTextInputFormatter(40)],
        ),
        // ********** marginBottom ********
        SizedBox(
          height: widget.marginBottom ?? 16,
        )
      ],
    );
  }
}

class CustomDropdownTextField extends StatelessWidget {
  const CustomDropdownTextField({
    super.key,
    this.label,
    required this.data,
    required this.onChanged,
    this.hint,
    this.icon,
    this.enabledBorderColor,
    this.borderColor,
  });

  final String? label;
  final List data;
  final Widget? hint;
  final Widget? icon;
  final Function(String?) onChanged;
  final Color? enabledBorderColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label ?? "",
            style: theme.textTheme.labelSmall,
          ),
        SizedBox(height: label == null ? 0 : 6),
        DropdownButtonFormField<String>(
          hint: hint ??
              Text(
                'Select',
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.hintColor),
              ),
          icon: icon,
          dropdownColor: Colors.white,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: theme.hintColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: theme.hintColor)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: theme.hintColor)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              hintStyle: theme.textTheme.labelMedium?.copyWith(
                  color: theme.hintColor) // Set the background color here
              ),
          items: List.generate(
              data.length,
              (index) => DropdownMenuItem<String>(
                    value: data[index],
                    child: Text(
                      data[index],
                      style: theme.textTheme.labelMedium,
                    ),
                  )),
          onChanged: onChanged,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

// class CustomTextWithLabel extends StatelessWidget {
//   final String text;
//   final String text2;
//   final Color? color;
//   final double? fontSize;
//   final dynamic fontWeight;
//   final dynamic textAlign;
//   final TextOverflow? overflow;

//   const CustomTextWithLabel(
//       {required this.text,
//       this.color,
//       this.fontSize,
//       this.fontWeight,
//       this.textAlign,
//       Key? key,
//       this.overflow,
//       required this.text2})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) => Row(
//         children: [
//           Text(text,
//               textAlign: textAlign ?? TextAlign.start,
//               overflow: overflow,
//               style: TextStyle(
//                   color: color ?? kTextColor,
//                   fontSize: fontSize ?? 14,
//                   fontWeight: fontWeight ?? FontWeight.w500)),
//           Text(text2,
//               textAlign: textAlign ?? TextAlign.start,
//               overflow: overflow,
//               style: TextStyle(
//                   color: color ?? kTextColor,
//                   fontSize: fontSize ?? 14,
//                   fontWeight: fontWeight ?? FontWeight.w500)),
//         ],
//       );
// }

// class CustomRadioTile1 extends StatelessWidget {
//   final Function(String?)? onChange;
//   final String value, groupValue, title, subtitle;
//   const CustomRadioTile1({
//     Key? key,
//     required this.onChange,
//     required this.value,
//     required this.groupValue,
//     required this.title,
//     required this.subtitle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       child: GestureDetector(
//         onTap: () {
//           onChange!(value);
//         },
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Radio(
//               value: value,
//               groupValue: groupValue,
//               onChanged: onChange,
//               activeColor: kSuccessColor,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   6.height,
//                   Text(
//                     value,
//                     textAlign: TextAlign.start,
//                     style: kTitleMedium,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       subtitle,
//                       textAlign: TextAlign.start,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         color: Color(0xff222222),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
