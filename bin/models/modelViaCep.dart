import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CepLocaleModel {
  String? cep;
  String? bairro;
  String? localidade;
  String? uf;
  String? ddd;
  String? complemento;
  String? ibge;
  String? gia;
  String? siafi;

  CepLocaleModel({
     this.cep,
     this.bairro,
     this.localidade,
     this.uf,
     this.ddd,
     this.complemento,
     this.ibge,
     this.gia,
     this.siafi,
  });
  
  String cepLocaleModelToString() {
    String teste = "cep: $cep, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd, complemento: $complemento, ibge: $ibge, gia: $gia, siafi: $siafi";
    return teste;
  }

}
