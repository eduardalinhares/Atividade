import 'package:atividade_avaliativa_2/objetos/item.dart';

class Bitcoins {
  Item? blockchain_info;
  Item? bitstamp;
  Item? mercado_bitcoin;
  Item? coinbase;
  Item? foxbit;

  Bitcoins(this.blockchain_info, this.bitstamp, this.mercado_bitcoin, this.coinbase, this.foxbit);

  Bitcoins.Iniciar(){
    blockchain_info = Item.Iniciar();
    bitstamp = Item.Iniciar();
    mercado_bitcoin = Item.Iniciar();
    coinbase = Item.Iniciar();
    foxbit = Item.Iniciar();
  }
}