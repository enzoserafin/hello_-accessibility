import 'package:flutter/material.dart';
import 'package:hello_semantics/widget/float_action_button_widget.dart';
import 'package:hello_semantics/widget/text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          sortKey: 0,
          text: 'Olá acessibilidade 2',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextWidget(sortKey: 1, text: 'Texto 1'),
            const TextWidget(sortKey: 3, text: 'Texto 3'),
            const TextWidget(sortKey: 2, text: 'Texto 2'),
            MergeSemantics(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    sortKey: 5,
                    text: '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                    focusable: true,
                  ),
                  TextWidget(
                    sortKey: 5,
                    excludeSemantics: true,
                    text: '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatActionButtonWidget(
        sortKey: 4,
        incrementCounter: _incrementCounter,
      ),
    );
  }
}
