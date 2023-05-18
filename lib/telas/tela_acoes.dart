import 'dart:js';

import 'package:atividade_avaliativa_2/objetos/financas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/itemComponente.dart';

class Telas_acoes extends StatefulWidget {
  const Telas_acoes({super.key});

  @override
  State<Telas_acoes> createState() => _Telas_acoesState();
}


class _Telas_acoesState extends State<Telas_acoes> {

  
  @override
  Widget build(BuildContext context) {

  final financas = ModalRoute.of(context)!.settings.arguments as Financas;

    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Ações'),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.ibovespa,)),
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.ifix,)),
                        //Expanded(child: ItemComponente(financas.moeda.))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.nasdaq,)),
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.dowjones,)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.cac,)),
                        Expanded(
                            child: ItemComponente(item: financas!.acoes!.nikkei,)),
                      ],
                    )
                  ],
                )),
          ),
          ElevatedButton(child: Text('Ir para Biticoins'), onPressed: () => Navigator.pushNamed(context, '/bitcoins', arguments: financas)),
        ])
        );;
  }
}