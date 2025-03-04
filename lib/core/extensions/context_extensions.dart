import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Ekran genişliğini almak için bir extension metodu
  double get screenWidth => MediaQuery.of(this).size.width;

  // Ekran yüksekliğini almak için bir extension metodu
  double get screenHeight => MediaQuery.of(this).size.height;

  // Tema verilerini almak için bir extension metodu
  ThemeData get theme => Theme.of(this);

  // Navigator'u kullanarak geri gitmek için bir extension metodu
  void pop() => Navigator.of(this).pop();

  // Navigator'u kullanarak yeni bir sayfaya gitmek için bir extension metodu
  Future<T?> push<T>(Widget page) {
    return Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
