class DBobject {
  late String id, mes, ultimo, hora, grafico;
  late double variable;
  late int apertura, maximo, minimo, volumen;

  DBobject(
      {required this.id,
      required this.mes,
      required this.ultimo,
      required this.hora,
      required this.grafico,
      required this.variable,
      required this.apertura,
      required this.maximo,
      required this.minimo,
      required this.volumen});

  static DBobject fromJson(Map<String, dynamic> json) {
    return DBobject(
        id: json['Unnamed: 0'].toString(),
        mes: json['Mes'],
        ultimo: json['Último'],
        hora: json['Hora'],
        grafico: json['Gráfico'],
        variable: json['Var.'],
        apertura: json['Apertura'],
        maximo: json['Máximo'],
        minimo: json['Mínimo'],
        volumen: json['Volumen']);
  }
}
