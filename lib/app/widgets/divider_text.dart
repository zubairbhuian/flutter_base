import 'package:flutter/material.dart';


class DividerText extends StatelessWidget {
  final String text;
  const DividerText(this.text,{super.key });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(children: [
       Expanded(
          child: Divider(
        thickness: .7,
        color:theme.dividerColor.withOpacity(.2),
      )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          text,
          style:  theme.textTheme.labelSmall,
        ),
      ),
       Expanded(
        child: Divider(
          thickness: .7,
          color: theme.dividerColor.withOpacity(.2),
        ),
      ),
    ]);
  }
}
