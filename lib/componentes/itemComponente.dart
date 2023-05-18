import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../objetos/item.dart';

class ItemComponente extends StatelessWidget {
  final Item? item;
  const ItemComponente({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Padding(padding: EdgeInsets.all(10), child: Text(widget.nome.toString())),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '${item!.nome}',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '${item!.valor}',
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
              ),
              Container(
                  color: item!.variacao > 0 ? Colors.blue : Colors.red,
                  child: Text(
                    '${item!.variacao}',
                    style: TextStyle(
                        fontStyle: FontStyle.normal, color: Colors.white),
                  ),
                 )
            ],
          )
        ],
      ),
    );
  }
}
