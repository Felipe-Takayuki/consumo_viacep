import '../models/modelViaCep.dart';
import '../services/services.dart';

class Controller{
  Future<CepLocaleModel> getVelueApi (String cep) async {
    Services services = Services();
    CepLocaleModel valuecep = await services.getValueViaCepService(cep);
    return valuecep;
  }
  

}