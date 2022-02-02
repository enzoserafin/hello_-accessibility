import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required double sortKey,
    required String text,
    TextStyle? style,
    bool? excludeSemantics,
    bool? focusable,
  })  : _sortKey = sortKey,
        _text = text,
        _style = style, 
        _excludeSemantics = excludeSemantics ?? false,
        _focusable = focusable ?? false,
        super(key: key);

  final double _sortKey;
  final String _text;
  final TextStyle? _style;
  final bool? _excludeSemantics;
  final bool? _focusable;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      sortKey: OrdinalSortKey(_sortKey),
      excludeSemantics: _excludeSemantics!,
      focusable: _focusable!,
      child: Text(
        _text,
        style: _style,
      ),
    );
  }
}
