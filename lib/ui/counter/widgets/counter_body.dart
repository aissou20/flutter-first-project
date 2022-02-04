import 'package:first_project_flutter/ui/counter/widgets/num_button.dart';
import 'package:flutter/material.dart';

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  _addValue(int _value) {
    setState(() {
      _counter = _counter + _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
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
                  onPressed: _decrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.remove),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.drag_handle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Increment',
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.delete),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Increment',
                  backgroundColor: Colors.amber,
                  child: const Image(
                    image: AssetImage('assets/images/equal.svg'),
                    width: 15,
                    height: 15,
                    color: Colors.white,
                  ),
                ),
              ),
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
          ),
        ],
      ),
    );
  }
}
