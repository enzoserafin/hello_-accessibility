import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class FloatActionButtonWidget extends StatelessWidget {
  const FloatActionButtonWidget(
      {Key? key, required double sortKey, required Function() incrementCounter})
      : _sortKey = sortKey,
        _incrementCounter = incrementCounter,
        super(key: key);

  final double _sortKey;
  final void Function() _incrementCounter;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      sortKey: OrdinalSortKey(_sortKey),
      child: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Somar valor',
        child: const Icon(Icons.add),
      ),
    );
  }
}
