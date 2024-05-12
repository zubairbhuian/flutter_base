import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final bool? initiallyExpanded;
  final List<Widget> children;
  final Function(bool)? onExpansionChanged;
  final Widget title;
  const CustomExpansionTile(
      {super.key,
      this.initiallyExpanded,
      this.onExpansionChanged,
      required this.children, required this.title});

//  late var  activeItem =initialActive;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    /// theme
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
      
        // active bg color
        backgroundColor: Colors.white,
        // deactive bg color
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        // collapsedIconColor: Colors.red,
        iconColor:theme.primaryColor,
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        initiallyExpanded: initiallyExpanded ?? false,
        collapsedBackgroundColor: Colors.transparent,
        expandedAlignment: Alignment.topLeft,
        title:title,
        onExpansionChanged: onExpansionChanged,
        children: children,
      ),
    );
  }
}
