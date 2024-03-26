
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget { // widget
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { // estado
  int contador = 0;
  String msg = "";

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("cAVALL"),
          ),
          body: Center(
            child: Column(
              children: [
                Text("Vc clicou $contador vezes"),
                Text(msg)
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                contador>10 ? contador++ : msg = "Passou do limite";
              }); // notifica a mudanca no estado
            },
            child: const Icon(Icons.add),
          ),
        ),
    );
  }
}
  
		

