import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final _textStyle = TextStyle(fontSize: 25.0);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Numero de clicks:',
            style: _textStyle,
          ),
          Text('$_count', style: _textStyle),
        ],
      )),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 35.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
