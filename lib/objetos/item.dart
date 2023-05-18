class Item {
  
  dynamic nome;
  dynamic valor;
  dynamic variacao;

  Item(this.nome, this.valor, this.variacao);

  Item.Iniciar(){
    nome = '';
    valor = 0;
    variacao = 0;
  }
}  