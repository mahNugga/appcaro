import 'package:flutter/material.dart';

import './options.dart';
import './seleccion.dart';

void main() {
  runApp(CaroApp());
}

class CaroApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CaroAppState();
  }
}

class _CaroAppState extends State<CaroApp> {
  var _optionsindice = 0;

  void _ElegirOpcion() {
    setState(() {
      _optionsindice = _optionsindice + 1;
    });
    print(_optionsindice);
  }

  @override
  Widget build(BuildContext context) {
    var options = [
      {
        'optionText': 'Servicios',
        'seleccion': ['cortes', 'manicure', 'pedicure', 'masajes'],
      },
      {
        'optionText': 'Reservas',
        'seleccion': ['Anteriores', 'Hoy', 'futuras'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carolina Aguiree'),
        ),
        body: Column(
          children: [
            Option(
              options[_optionsindice]['optionText'] as String,
            ),
            ...(options[_optionsindice]['seleccion'] as List<String>)
                .map((eleccion) {
              return Seleccion(_ElegirOpcion, eleccion);
            }).toList()
            /*  Seleccion(_ElegirOpcion),
            Seleccion(_ElegirOpcion),
            Seleccion(_ElegirOpcion), */
          ],
        ),
      ),
    );
  }
}
