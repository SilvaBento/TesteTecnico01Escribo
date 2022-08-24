//Importando a Biblioteca dart:io
import 'dart:io';

// Método main
void main() {
  //Entrando com o valor para validação
  print("Informe um valor inteiro para que sejá Validado");
  String? val = stdin.readLineSync()!;
  if (val != null) {
    int number = int.parse(val);
    //Chamndo a funçãovalidaNum
    int result = validaNum(number);
    print("O resultado da soma é $result");
  }
}

//Função para validação do número digitado pelo usuário
int validaNum(int num) {
  int somaInf = 0;
  for (int i = 1; i < num; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      somaInf += i;
    }
  }
  return (somaInf);
}
