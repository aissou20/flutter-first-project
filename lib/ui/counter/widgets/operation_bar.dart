import 'package:flutter/material.dart';

import 'counter_body.dart';

class Operation extends StatelessWidget {
  const Operation({
    Key? key,
    this.onSetOperation,
    this.onEvaluate,
    this.onClearField,
  }) : super(key: key);

  final Function(ActionType)? onSetOperation;
  final Function? onEvaluate;
  final Function? onClearField;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'fab_increment',
              onPressed: () => onSetOperation?.call(ActionType.add),
              tooltip: 'Increment',
              backgroundColor: Colors.orange,
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'fab_decrement',
              onPressed: () => onSetOperation?.call(ActionType.remove),
              tooltip: 'Decrement',
              backgroundColor: Colors.orange,
              child: const Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'fab_evaluate',
              onPressed: () => onEvaluate?.call(),
              tooltip: 'Evaluate',
              backgroundColor: Colors.orange,
              child: const Icon(Icons.drag_handle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 'fab_clear',
              onPressed: () => onClearField?.call(),
              tooltip: 'Clear',
              backgroundColor: Colors.orange,
              child: const Icon(Icons.delete),
            ),
          ),
        ],
      );
}
