
import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() => "Le nombre ne peut pas etre negatif";
}

void main() {
  try {
    print("Entrez un nombre :");
    String? saisie = stdin.readLineSync();
    int nombre = int.parse(saisie!);
    if (nombre < 0) {
  throw NombreNegatifException();
} else {
  print("Le carre du nombre est : ${nombre * nombre}");
}
  } on NombreNegatifException catch (e) {
    print("Erreur : $e");
  } finally {
    print("Fin d'operation");
  }
}
