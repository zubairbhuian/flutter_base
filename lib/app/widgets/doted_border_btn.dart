import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gape.dart';
class DotedBorderBtn extends StatelessWidget {
  final String lavel;
  final void Function()? onTap;
  final bool isActive;
  const DotedBorderBtn(
      {this.onTap, this.isActive = false, super.key, required this.lavel});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lavel,
          style: theme.textTheme.labelSmall,
        ),
        SizedBox(height: Gaps.reguler),
        DottedBorder(
          color: isActive ? theme.primaryColorLight : theme.hintColor,
          dashPattern: const [5, 5],
          borderType: BorderType.RRect,
          radius: Radius.circular(80.r),
          // padding: const EdgeInsets.all(12),
          strokeWidth: 1,
          child: InkWell(
            onTap: onTap,
            splashColor: theme.cardColor,
            borderRadius: BorderRadius.circular(80.r),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload,
                    color: isActive ? theme.primaryColorLight : theme.hintColor,
                  ),
                  SizedBox(width: 4.sp),
                  Text(
                    isActive ? "Uploaded" : "Upload",
                    style: theme.textTheme.labelMedium?.copyWith(
                      color:
                          isActive ? theme.primaryColorLight : theme.hintColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20.sp),
      ],
    );
  }
}
