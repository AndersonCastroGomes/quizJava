import 'package:flutter/material.dart';
import 'homepage.dart';

class ResultPage extends StatelessWidget {
  final int acertos;
  final int total;

  const ResultPage({required this.acertos, required this.total});

  @override
  Widget build(BuildContext context) {
    int erros = total - acertos;
    return Scaffold(
      appBar: AppBar(title: Text('Resultado')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você acertou $acertos de $total', style: TextStyle(fontSize: 24)),
              SizedBox(height: 40),
              Text('Acertos: $acertos', style: TextStyle(color: Colors.green, fontSize: 20)),
              Text('Erros: $erros', style: TextStyle(color: Colors.red, fontSize: 20)),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomePage())),
                child: Text('Voltar ao início'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
