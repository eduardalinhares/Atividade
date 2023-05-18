import 'package:atividade_avaliativa_2/objetos/item.dart';

class Moedas {
  Item? dolar;
  Item? peso;
  Item? euro;
  Item? yen;

  Moedas(this.dolar, this.peso, this.euro, this.yen);

  Moedas.Inicar() {
    dolar = Item.Iniciar();
    peso = Item.Iniciar();
    euro = Item.Iniciar();
    yen = Item.Iniciar();
  }
}
