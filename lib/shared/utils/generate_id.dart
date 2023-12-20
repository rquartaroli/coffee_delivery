import 'dart:math';

String generateId() {
  const String characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
  Random random = Random();
  String id = '';

  for (int i = 0; i < 32; i++) {
    int index = random.nextInt(characters.length);
    id += characters[index];
  }

  return id;
}