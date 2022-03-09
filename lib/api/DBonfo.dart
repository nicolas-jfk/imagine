import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'DBobject.dart';

class DBinfo extends ChangeNotifier {
  final List<DBobject> _objects = [];
  DBinfo();
  Future<List<DBobject>> getData() async {
    var APIUrl = "https://rest.imagineapps.co/cocoa-contracts";
    final respuesta = await http.get(Uri.parse(APIUrl));

    if (respuesta.statusCode == 200) {
      final Map<String, dynamic> objetosMap = json.decode(respuesta.body);

      objetosMap.forEach((key, value) {
        final temObject = DBobject.fromJson(value);
        _objects.add(temObject);
      });

      return _objects;
    }
    return <DBobject>[];
  }
}
