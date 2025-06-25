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
            builder: (_) => ResultPage(acertos: correctAnswers, total: questions.length),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntaAtual = questions[currentIndex];
    return Scaffold(
      appBar: AppBar(title: Text('Pergunta ${currentIndex + 1}/${questions.length}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(perguntaAtual['pergunta'], style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ...List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => responder(index),
                  child: Text(perguntaAtual['respostas'][index]),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}