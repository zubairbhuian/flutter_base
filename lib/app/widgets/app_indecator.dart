import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppIndecator extends StatelessWidget {
  final double? value;
  const AppIndecator({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return   SpinKitFadingCircle(
      color: theme.primaryColor,
      size: 45.0,
    );
  }
}
