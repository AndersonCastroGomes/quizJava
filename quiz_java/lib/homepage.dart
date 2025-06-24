import 'package:flutter/material.dart';
// Widget da página inicial do aplicativo

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Quiz Java')), // Título centralizado na AppBar
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Faz a coluna ocupar apenas o espaço necessário
          children: [
            Image.asset(
              'assets/img/logo.png',
              width: 200,
              height: 150,
            ), // Corrigido: vírgula adicionada aqui
            const SizedBox(height: 40), // Espaço entre a imagem e o botão
            ElevatedButton(
              onPressed: () {
                print('pressionado'); // Ação ao clicar no botão (exibe no console)
              },
              child: const Text(
                'JOGAR',
                style: TextStyle(fontSize: 50), // Texto grande para o botão
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20), // Tamanho do botão
              ),
            ),
          ],
        ),
      ),
    );
  }
}
