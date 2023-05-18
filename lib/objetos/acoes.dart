import 'package:atividade_avaliativa_2/objetos/item.dart';

class Acoes {
  Item? ibovespa;
  Item? nasdaq;
  Item? cac;
  Item? ifix;
  Item? dowjones;
  Item? nikkei;

  Acoes(this.ibovespa, this.nasdaq, this.cac, this.ifix, this.dowjones, this.nikkei);

  Acoes.Iniciar(){
    ibovespa = Item.Iniciar();
    nasdaq = Item.Iniciar();
    cac = Item.Iniciar();
    ifix = Item.Iniciar();
    dowjones = Item.Iniciar();
    nikkei = Item.Iniciar();
   
  }
} 