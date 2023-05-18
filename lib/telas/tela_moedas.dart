import 'dart:convert';

import 'package:atividade_avaliativa_2/componentes/itemComponente.dart';
import 'package:atividade_avaliativa_2/objetos/acoes.dart';
import 'package:atividade_avaliativa_2/objetos/bitcoins.dart';
import 'package:atividade_avaliativa_2/objetos/financas.dart';
import 'package:atividade_avaliativa_2/objetos/item.dart';
import 'package:atividade_avaliativa_2/objetos/moedas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

class Telas_moedas extends StatefulWidget {
  const Telas_moedas({super.key});

  @override
  State<Telas_moedas> createState() => _Telas_moedasState();
}

class _Telas_moedasState extends State<Telas_moedas> {

  Financas financas = Financas.Inicar();

  BuscaDados() async {
    final String urlVia = await 'https://api.hgbrasil.com/finance?format=json-cors&key=11d421da';
    Response resposta_moeda = await get(Uri.parse(urlVia));
    Map info = json.decode(resposta_moeda.body);

    Item dolar = Item('Dólar', info['results']['currencies']['USD']['buy'],
        info['results']['currencies']['USD']['variation']);
    Item euro = Item('Euro', info['results']['currencies']['EUR']['buy'],
        info['results']['currencies']['EUR']['variation']);
    Item yen = Item('Yen', info['results']['currencies']['JPY']['buy'],
        info['results']['currencies']['JPY']['variation']);
    Item peso = Item('Peso', info['results']['currencies']['ARS']['buy'],
        info['results']['currencies']['ARS']['variation']);

    Moedas moeda = Moedas(dolar, peso, yen, peso);

    Item ibovespa = Item(
        'IBOVESPA',
        info['results']['stocks']['IBOVESPA']['points'],
        info['results']['stocks']['IBOVESPA']['variation']);
    Item nasdaq = Item(
        'IBOVESPA',
        info['results']['stocks']['NASDAQ']['points'],
        info['results']['stocks']['NASDAQ']['variation']);
    Item cac = Item('CAC', info['results']['stocks']['CAC']['points'],
        info['results']['stocks']['CAC']['variation']);
    Item ifix = Item('IFIX', info['results']['stocks']['IFIX']['points'],
        info['results']['stocks']['IFIX']['variation']);
    Item dowjones = Item(
        'Dolar',
        info['results']['stocks']['DOWJONES']['points'],
        info['results']['stocks']['DOWJONES']['variation']);
    Item nikkei = Item('NIKKEI', info['results']['stocks']['NIKKEI']['points'],
        info['results']['stocks']['NIKKEI']['variation']);

    Acoes acoes = Acoes(ibovespa, nasdaq, cac, ifix, dowjones, nikkei);

    Item blockchain_info = Item(
        'Blockchain.info',
        info['results']['bitcoin']['blockchain_info']['buy'],
        info['results']['bitcoin']['blockchain_info']['variation']);
    Item coinbase = Item(
        'Coinbase',
        info['results']['bitcoin']['coinbase']['buy'],
        info['results']['bitcoin']['coinbase']['variation']);
    Item bitstamp = Item(
        'BitStamp',
        info['results']['bitcoin']['bitstamp']['buy'],
        info['results']['bitcoin']['bitstamp']['variation']);
    Item foxbit = Item('FoxBit', info['results']['bitcoin']['foxbit']['buy'],
        info['results']['bitcoin']['foxbit']['variation']);
    Item mercado_bitcoin = Item(
        'Mercado Bitcoin',
        info['results']['bitcoin']['mercadobitcoin']['buy'],
        info['results']['bitcoin']['mercadobitcoin']['variation']);

    Bitcoins bitcoins =
        Bitcoins(blockchain_info, bitstamp, mercado_bitcoin, coinbase, foxbit);

    setState(() {
      financas = Financas(moeda, acoes, bitcoins);
    });
  }




  @override
  Widget build(BuildContext context) {

    BuscaDados();

    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Moedas', style: TextStyle(fontStyle: FontStyle.italic),),
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
                            child: ItemComponente( item:
                                financas.moeda!.dolar)),
                        Expanded(
                            child: ItemComponente( item:
                                financas.moeda!.euro)),
                        //Expanded(child: ItemComponente(financas.moeda.))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ItemComponente(item:
                                financas.moeda!.peso)),
                        Expanded(
                            child: ItemComponente(item:
                                financas.moeda!.yen)),
                      ],
                    )
                  ],
                )),
          ),
          ElevatedButton(
              child: Text('Ir para Ações'),
              onPressed: () => Navigator.pushNamed(context, '/acoes', arguments: financas)),
        ]));
  }
}
