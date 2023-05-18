import 'package:atividade_avaliativa_2/objetos/acoes.dart';
import 'package:atividade_avaliativa_2/objetos/bitcoins.dart';
import 'package:atividade_avaliativa_2/objetos/moedas.dart';

class Financas {

  Moedas? moeda;
  Acoes? acoes;
  Bitcoins? bitcoins;

  Financas(this.moeda, this.acoes, this.bitcoins);

  Financas.Inicar(){
    moeda = Moedas.Inicar();
    acoes = Acoes.Iniciar();
    bitcoins = Bitcoins.Iniciar();
  }
}