import 'dart:math';

class Testar {
  final String nome;
  final double peso;
  final double altura;

  Testar({required this.nome, required this.peso, required this.altura});

  double get imc {
    var resultado = peso / pow(altura, 2);
    resultado = resultado * 100;
    return resultado.roundToDouble()/100;
  }
}
