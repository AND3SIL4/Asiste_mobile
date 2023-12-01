import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key, required this.list});

  final List<String> list;

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 373,
      initialSelection: widget.list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          widget.list.first = value!;
        });
      },
      dropdownMenuEntries:
          widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
