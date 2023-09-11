import 'package:imc/pessoa.dart';

void execute() {
  print("Seja bem-vindo(a)!");

  String nome = Pessoa.input("Digite seu nome:");

  var insira1 =
      Pessoa.insiraPeso('Olá $nome\nDigite o peso ou s para sair', 's');

  var insira2 =
      Pessoa.insiraAltura('Agora digite sua altura ou s para sair', 's');

  var calculo = Pessoa.roundDouble(insira1, insira2);

  print(calculo);
}