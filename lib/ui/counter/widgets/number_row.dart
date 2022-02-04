import 'package:flutter/material.dart';

import 'num_button.dart';

class NumberRow extends StatelessWidget {
  final List<int> values;
  final Function(int) callback;

  const NumberRow({
    Key? key,
    required this.values,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = values
        .map(
          (e) => NumButton(
            value: e,
            callback: callback,
          ),
        )
        .toList();

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 220),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      ),
    );
  }
}
