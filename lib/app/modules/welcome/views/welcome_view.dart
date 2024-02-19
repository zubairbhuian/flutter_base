import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            
          ],),
        ));
  }
}
