import 'package:flutter/material.dart';
import 'package:flutter_application_test/api/DBobject.dart';

class ListOfObjects extends StatelessWidget {
  DBobject objec;
  ListOfObjects({Key? key, required this.objec}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.grey,
      ),
      margin: const EdgeInsets.all(40),
      padding: const EdgeInsets.all(30),
      height: 230,
      width: 100,
      child: Column(
        children: [
          Text('Unnamed: 0 ' + objec.id),
          Text('Mes: ' + objec.mes),
          Text('Último: ' + objec.ultimo),
          Text('Var. :' + objec.variable.toString()),
          Text('Apertura: ' + objec.apertura.toString()),
          Text('Máximo: ' + objec.maximo.toString()),
          Text('Mínimo: ' + objec.minimo.toString()),
          Text('Volumen: ' + objec.volumen.toString()),
          Text('Hora: ' + objec.hora),
          Text('Gráfico: ' + objec.grafico)
        ],
      ),
    );
  }
}
