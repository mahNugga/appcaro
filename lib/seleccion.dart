import 'dart:html' as dartHtml;
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Seleccion extends StatelessWidget {
  final VoidCallback opcionHandler; //VoidCallback
  final String opcionText;
  Seleccion(this.opcionHandler, String this.opcionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(opcionText),
          onPressed: opcionHandler),
    );
  }
}
