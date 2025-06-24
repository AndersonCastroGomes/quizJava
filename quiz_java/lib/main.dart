import 'package:flutter/material.dart'; // Importa o pacote necessário para criar interfaces com Flutter
import 'homepage.dart';

// Função principal que inicia o aplicativo
void main() {
  runApp(const MyApp()); // Executa o widget MyApp como raiz do aplicativo
}

// Widget principal do aplicativo (sem estado)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(), // Define a tela inicial como Homepage
      debugShowCheckedModeBanner: false, // Remove a faixa de "DEBUG" no canto da tela
    );
  }
}

