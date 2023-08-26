import 'api/auth_viacep.dart';
import 'models/modelViaCep.dart';

Future<void> main() async {
   API viacepController = API();
   CepLocaleModel teste = await viacepController.getCep("01001-000");
   print(teste.cepLocaleModelToString());
     
}


