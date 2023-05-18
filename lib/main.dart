import 'package:atividade_avaliativa_2/telas/tela_acoes.dart';
import 'package:atividade_avaliativa_2/telas/tela_bitcoins.dart';
import 'package:atividade_avaliativa_2/telas/tela_moedas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Finanças de hoje', selectionColor: Colors.white, ),
            shadowColor: Colors.black,
            backgroundColor: Color.fromARGB(255, 28, 88, 30),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/moedas',
        routes: {
          '/moedas': (context) => Telas_moedas(),
          '/acoes': (context) => Telas_acoes(),
          '/bitcoins': (context) => Telas_bitcoins()

          //'/': (context) => HomeScreen(),
          //'/details': (context) => DetailScreen(),
        });
  }
}
