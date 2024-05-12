import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final VoidCallback? onLeading;
  final double? preferredHeight;
  final List<Widget>? actions;
  final bool isShadow;
  final bool centerTitle;
  final void Function()? actionBtnOnTap;
  final String actionBtnText;

  const CustomAppBar(
      {super.key,
      this.isShadow = false,
      this.centerTitle = false,
      this.title,
      this.onLeading,
      this.preferredHeight,
      this.actions,
      this.actionBtnOnTap,
      this.actionBtnText = 'Text'});
// Specify the desired height of the AppBar
  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? 56.0);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      elevation: 0,
      centerTitle: centerTitle,
      // leadingWidth: 80,
      // backgroundColor: const Color(0xffF2F8FD),
      // foregroundColor: kTextColor,
      // titleTextStyle: kTitleLarge.copyWith(color: const Color(0xff2F2F2F)),
      // appbar leading
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        splashFactory: NoSplash.splashFactory,
        child: const Icon(IconlyLight.arrow_left)),
      // appbar title
      title: title,
      // appbar actions),
      actions: actions,
    );
  }
}
