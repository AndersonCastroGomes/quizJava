import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'homepage.dart';

class ResultPage extends StatelessWidget {
  final int acertos;
  final int total;

  const ResultPage({required this.acertos, required this.total});

  @override
  Widget build(BuildContext context) {
    int erros = total - acertos;
    double percentual = (acertos / total) * 100;

    // Escolhe a animação com base no desempenho
    String animacao = percentual < 50
        ? 'assets/img/animacaoDerrota.json'
        : 'assets/img/animacaoVitoria.json';

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 234, 218),
      appBar: AppBar(
        backgroundColor: Color(0xFF6F4E37),
        title: Text('Resultado', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animação de acordo com desempenho
              Lottie.asset(
                animacao,
                height: 250,
                repeat: true,
                animate: true,
              ),
              SizedBox(height: 20),
              Text(
                'Você acertou $acertos de $total',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Acertos: $acertos',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              Text(
                'Erros: $erros',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6F4E37),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  ),
                  child: Text('Voltar ao início'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
