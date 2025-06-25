import 'package:flutter/material.dart';
import 'result_page.dart';
import '../data/questions.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int correctAnswers = 0;

  void responder(int respostaIndex) {
    if (respostaIndex == questions[currentIndex]['alternativa_correta']) {
      correctAnswers++;
    }

    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ResultPage(acertos: correctAnswers, total: questions.length),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntaAtual = questions[currentIndex];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 234, 218), // Fundo bege
      appBar: AppBar(
        backgroundColor: Color(0xFF6F4E37), // Marrom café
        title: Text(
          'Pergunta ${currentIndex + 1}/${questions.length}',
          style: TextStyle(color: Colors.white), // Texto branco
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                perguntaAtual['pergunta'],
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            ...List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Center(
                  child: SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF6F4E37), // Marrom café
                        foregroundColor: Colors.white, // Texto branco
                        textStyle: TextStyle(fontSize: 18),
                      ),
                      onPressed: () => responder(index),
                      child: Text(perguntaAtual['respostas'][index]),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
