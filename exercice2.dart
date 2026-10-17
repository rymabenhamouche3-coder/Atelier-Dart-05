
import 'dart:io';

void main() {
  try {
    print("Entrez votre age :");
    String? saisie = stdin.readLineSync();

    int age = int.parse(saisie!);
    print("Votre age est : $age");
  } on FormatException catch (e) {
    print("Erreur de format : ${e.message}");
  }

finally {
  print("Fin d'opération");
}
}