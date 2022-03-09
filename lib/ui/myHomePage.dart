import 'package:flutter/material.dart';
import 'package:flutter_application_test/api/DBonfo.dart';
import 'package:flutter_application_test/ui/spinnerwidget.dart';
import 'ListOfObjects.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DBinfo info = DBinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagine API'),
      ),
      body: FutureBuilder(
        future: info.getData(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    var dobject = snapshot.data![index];
                    return ListOfObjects(objec: dobject);
                  },
                ))
              ],
            );
          } else {
            return const SpinnerWidget();
          }
        },
      ),
    );
  }
}
