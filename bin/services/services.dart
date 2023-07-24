import '../auth/auth_viacep.dart';
import '../models/modelViaCep.dart';

class Services{

  Future<CepLocaleModel> getValueViaCepService (String cep) async {
    Auth auth = Auth();
    CepLocaleModel model =  await auth.authApi(cep);
  
    return model; 
  }
}