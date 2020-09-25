import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPadding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hPadding, 32.0, _hPadding, 4),
            child: Text(_title)),
        Container(
            padding: const EdgeInsets.fromLTRB(
                _hPadding, 10.0, _hPadding, _hPadding),
            child: Text(_body)),
      ],
    );
  }
}
