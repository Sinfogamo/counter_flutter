import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 25.0);
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Numero de clicks:',
            style: textStyle,
          ),
          Text('$count', style: textStyle),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        },
      ),
    );
  }
}
