import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Pessoa {
  String? nome;
  double? peso;
  double? altura;
  double? resultado;
  

//.............MÉTODO INPUT..................
  static String input(String texto) {
    print(texto);
    return digitar();
  }

//..........ENTRADA TECLADO.....................
  static String digitar() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

//.........PESO......................
  static double? insiraPeso(String peso, String saida) {
    peso = input(peso);
    if (peso == saida) {
      stdout.write("Escolheu sair, até a próxima!");
      exit(0);
    }
    try {
      peso;
      return double.parse(peso);
    } catch (e) {
      print("Inválido! recomece!");
      exit(0);
    }
  }

//.........ALTURA......................
  static double? insiraAltura(String altura, String saida) {
    altura = input(altura);
    if (altura == saida) {
      print("Escolheu sair, até a próxima!");
      exit(0);
    }
    try {
      altura;
      return double.parse(altura);
    } catch (e) {
      print("Inválido! recomece!");
      exit(0);
    }
  }

  //......CALCULANDO IMC..............
  static roundDouble(insiraPeso, insiraAltura) {
    var resultado = insiraPeso / pow(insiraAltura, 2);
    try {
      if (resultado < 16) {
        print(texto("Você está com Magreza grave"));
        print("Seu Imc é:");
      } else if (resultado >= 16 && resultado < 17) {
        print(texto("Você está com Magreza Moderada"));
        print("Seu Imc é:");
      } else if (resultado >= 17 && resultado < 18.5) {
        print(texto("Você está com Magreza Leve"));
        print("Seu Imc é:");
      } else if (resultado >= 18.5 && resultado < 25) {
        print(texto("Você está com Magreza Saudável"));
        print("Seu Imc é:");
      } else if (resultado >= 25 && resultado < 30) {
        print(texto("Você está com Sobrepeso"));
        print("Seu Imc é:");
      } else if (resultado >= 30 && resultado < 35) {
        print(texto("Você está com Obesidade grau 1"));
        print("Seu Imc é:");
      } else if (resultado >= 35 && resultado < 40) {
        print(texto("Você está com Obesidade grau 2"));
        print("Seu Imc é:");
      } else if (resultado >= 40) {
        print(texto("Você está com Obesidade - GRAU 3 (mórbida)"));
        print("Seu Imc é:");        
      }
    } catch (e) {
      print('Error!');
    }
    return resultado.toStringAsFixed(2);
  }

//......TEXTO.........................
  static String? texto(String texto){
    return texto;   
  }
  
}
