import 'dart:html';

class cartaoEntity {
  late int? cartaoID;
  final String? descricao;
  final int? numero;
  final String? validade;
  final int? cvv;
  final int? senha;

  cartaoEntity(
      {this.cartaoID,
      this.descricao,
      this.numero,
      this.validade,
      this.cvv,
      this.senha});
}
