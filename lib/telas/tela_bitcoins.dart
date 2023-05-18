import 'package:atividade_avaliativa_2/objetos/financas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/itemComponente.dart';

class Telas_bitcoins extends StatefulWidget {
  const Telas_bitcoins({super.key});

  @override
  State<Telas_bitcoins> createState() => _Telas_bitcoinsState();
}

//final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

class _Telas_bitcoinsState extends State<Telas_bitcoins> {
  @override
  Widget build(BuildContext context) {

    final financas = ModalRoute.of(context)!.settings.arguments as Financas;
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Bitcoins'),
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
                            child: ItemComponente(item: financas!.bitcoins!.blockchain_info,)),
                        Expanded(
                            child: ItemComponente(item: financas!.bitcoins!.coinbase,)),
                        //Expanded(child: ItemComponente(financas.moeda.))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item: financas!.bitcoins!.bitstamp,)),
                        Expanded(
                            child: ItemComponente(item: financas!.bitcoins!.foxbit,)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item: financas!.bitcoins!.mercado_bitcoin,))
                      ],
                    )
                  ],
                )),
          ),
          ElevatedButton(child: Text('Voltar para moedas'), onPressed: () => Navigator.popAndPushNamed(context, '/moedas', arguments: financas)),
        ])
        );
  }
}