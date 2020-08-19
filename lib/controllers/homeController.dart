import 'package:firstmobxproject/models/client.dart';
import 'package:mobx/mobx.dart';
part 'homeController.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  Client client = Client();
  @computed
  bool get isValidate => validateEmail() == null && validateEmail() == null;

  String validateName() {
    if (client.name == null || client.name.isEmpty)
      return "Esse campo é obrigatório";
    else if (client.name.length < 3)
      return "Seu nome precisa ter mais de 3 caracteres";
    else
      return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty)
      return "Esse campo é obrigatório";
    else if (!client.email.contains("@"))
      return "Email Inválido";
    else
      return null;
  }

  dispose() {
    print('disposei');
  }
}
