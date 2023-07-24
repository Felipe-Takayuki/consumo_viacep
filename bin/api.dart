import 'controller/controller.dart';
import 'models/modelViaCep.dart';

Future<void> main() async {
   Controller viacepController = Controller();
   CepLocaleModel teste = await viacepController.getVelueApi("17510-090");
   print(teste.cepLocaleModelToString());
     
}


