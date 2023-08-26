
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/modelViaCep.dart';

class API {
String? cep;
  API({
   this.cep,
  });

Future<CepLocaleModel> getCep(String cepAuth) async {
  cep = cepAuth;
  final body;
  final url = Uri.parse("https://viacep.com.br/ws/$cep/json/"); 
  final response = await http.get(url); 
  if (response.statusCode == 200) {
    print("statusCode == ${response.statusCode}");
  }
  else {
     print("statusCode == ${response.statusCode} ERROR");
  }
  body = jsonDecode(response.body);
  CepLocaleModel model = CepLocaleModel(cep: body['cep'], bairro: body['bairro'], localidade:body['localidade'], uf: body['uf'], ddd: body['ddd'], complemento: body['complemento'], gia: body['gia'], ibge: body['ibge'], siafi: body['siafi']);
  return model; 
  
}

}
