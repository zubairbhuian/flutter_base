import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet {
  static modal(
      {required BuildContext context,
      double? height,
      Color ? backgroundColor,
      required Widget child}) {
        ThemeData theme = Theme.of(context);
    return showModalBottomSheet<void>(
        context: context,
        // isScrollControlled: true,
        backgroundColor:backgroundColor?? theme.dialogBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            width: double.infinity,
            height: height ?? 330,
            child: Stack(
              children: [
                SingleChildScrollView(
                     padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                   child: 
                   child
                  ),
                    Positioned(
                    top: 16,
                    right: 16,
                    child: InkWell(
                      onTap: () => Get.back(),
                      splashFactory: NoSplash.splashFactory,
                      child: Container(
                          width: 28,
                          height: 28,
                          // padding: const EdgeInsets.all(10),
                          decoration:  const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child:  Icon(
                            Icons.close,
                            size: 16,
                           color:theme.primaryColor
                            ,
                          )),
                    )),
              ],
            ),
          );
        });
  }
    static base(
      {required BuildContext context,
      double? height,
      required Widget child}) {
    return showBottomSheet(
        context: context,
        // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: height ?? 330,
            child: Stack(
              children: [
              
                SingleChildScrollView(
                     padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                   child: 
                   child
                  ),
                    Positioned(
                    top: 16,
                    right: 16,
                    child: InkWell(
                      onTap: () => Get.back(),
                      splashFactory: NoSplash.splashFactory,
                      child: Container(
                          width: 28,
                          height: 28,
                          // padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffE5D8CF)),
                          child: const Icon(
                            Icons.close,
                            size: 16,
                          )),
                    )),
              ],
            ),
          );
        });
  }
}
