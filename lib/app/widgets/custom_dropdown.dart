import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List data;
  final String? value; 
  final Function(String?)? onChanged;
  const CustomDropdownButton({super.key, required this.data, this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DropdownButton<String>(
      value: value,
      iconSize:20,
      elevation: 16,
      isDense: true,
      dropdownColor: Colors.red,
      underline: const SizedBox(),
      onChanged: onChanged,
      style: theme.textTheme.bodyMedium,
      items: List.generate(
          data.length,
          (index) => DropdownMenuItem<String>(
                value: data[index],
                child: Text(
                  data[index],
                  style: theme.textTheme.bodySmall,
                ),
              )),
    );
  }
}