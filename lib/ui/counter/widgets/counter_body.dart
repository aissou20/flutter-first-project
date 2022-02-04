import 'package:first_project_flutter/ui/counter/widgets/num_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'digital_text.dart';
import 'number_row.dart';
import 'operation_bar.dart';

enum ActionType {
  add,
  remove,
}

class CounterBody extends StatefulWidget {
  const CounterBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterBody> createState() {
    return CounterBodyState();
  }
}

class CounterBodyState extends State<CounterBody> {
  int _counter = 0;
  int _total = 0;
  ActionType _action = ActionType.add;


  void _incrementCounter(int value) {
    setState(() {
      _counter *= 10;
      _counter += value;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _setOperation(ActionType action) {
    _evaluateField();
    _action = action;
  }

  void _evaluateField() {
    setState(() {
      if (_action == ActionType.add) {
        _total += _counter;
      } else {
        _total -= _counter;
      }
      _counter = 0;
    });
  }
  _addValue(int _value) {
    setState(() {
      _counter = _counter + _value;
    });
  }

  void _clearField (){
    setState(() {
      _counter =0;
      _total =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String _result = _counter == 0 ? '$_total' : '$_counter';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DigitalText(
            icon: _action == ActionType.add ? Icons.add : Icons.remove,
            text: _result,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Operation(
              onSetOperation: (action) => _setOperation(action),
              onEvaluate: () => _evaluateField(),
              onClearField: () => _clearField(),
            ),
          ),
          NumberRow(
            values: const [1, 2, 3],
            callback: (value) => _incrementCounter(value),
          ),
          NumberRow(
            values: const [4, 5, 6],
            callback: (value) => _incrementCounter(value),
          ),
          NumberRow(
            values: const [7, 8, 9],
            callback: (value) => _incrementCounter(value),
          ),
          NumberRow(
            values: const [0],
            callback: (value) => _incrementCounter(value),
          ),
         /* Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'FAB_Incr',
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'FAB_Decr',
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'FAB_Eql',
                  onPressed: _decrementCounter,
                  tooltip: 'Equal',
                  child: const Icon(Icons.drag_handle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'FAB_Del',
                  onPressed: _clearField,
                  tooltip: 'Delete',
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.delete),
                ),
              ),
              *//*Padding(
              //ajout svg
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Increment',
                  backgroundColor: Colors.pink,
                  child: SvgPicture.asset('assets/images/home.svg'),
                ),
              ),*//*
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumButton(
                  value: 1,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 2,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 3,
                  callback: (value) {
                    _addValue(value);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumButton(
                  value: 4,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 5,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 6,
                  callback: (value) {
                    _addValue(value);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumButton(
                  value: 7,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 8,
                  callback: (value) {
                    _addValue(value);
                  }),
              NumButton(
                  value: 9,
                  callback: (value) {
                    _addValue(value);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumButton(
                  value: 0,
                  callback: (value) {
                    _addValue(value);
                  }),
            ],
          ),*/
        ],
      ),
    );
  }
}
