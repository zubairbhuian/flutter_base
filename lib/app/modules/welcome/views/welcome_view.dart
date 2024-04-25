import 'package:flutter/material.dart';
import 'package:flutter_base/app/services/controller/config_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 120.sp),
          ElevatedButton(

              onPressed: () {
                ConfigController.to.toggleTheme();
              },
              child: Text(
                "Change Theme",
               style: theme.textTheme.labelLarge,
              )),
               Card(child: Text(
                "Change Theme",
                style: theme.textTheme.labelLarge,
              ))
        ],
      ),
    ));
  }
}
