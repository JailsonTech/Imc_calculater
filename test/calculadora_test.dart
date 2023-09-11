import 'package:imc/imc.dart';

void main() {
  final testar = Testar(nome: 'Jailson', peso: 85, altura: 1.65);
  final testar2 = Testar(nome: 'Jailson', peso: 94, altura: 1.74);
  print('Imc deve vir 31.05: ${testar2.imc == 31.05}');
  print('Imc deve vir 31.22: ${testar.imc == 31.22}');

  print('testar.imc');
  print('testar2.imc');
}
