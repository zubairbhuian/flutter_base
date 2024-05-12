import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class CustomTile extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final bool isDivider;
  const CustomTile({super.key, this.onTap, required this.title,this.isDivider=true});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.sp),
                  child: Text(
                    title,
                    style: theme.textTheme.labelMedium,
                  ),
                )),
                const Icon(IconlyLight.arrow_right_2)
              ],
            ),
            if(isDivider)
             Divider(
              height: 0,
              color: theme.dividerColor.withOpacity(.1),
            )
          ],
        ),
      ),
    );
  }
}
