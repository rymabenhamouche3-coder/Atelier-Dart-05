
class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() => message;
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Mot de passe trop court");
  }
}

void main() {
  try {
    verifierMotdepasse("abc");
    print("Mot de passe valide");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : $e");
  }
}
