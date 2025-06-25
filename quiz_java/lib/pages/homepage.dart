import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'quiz.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 234, 218), // Bege claro
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animação Lottie em loop
            Lottie.asset(
              'assets/img/animacao.json',
              height: 300,
              repeat: true,
              animate: true,
            ),
            SizedBox(height: 20),
            Text(
              'JAVA QUIZ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                textStyle: TextStyle(fontSize: 24),
                backgroundColor: Color(0xFF6F4E37), 
                foregroundColor: Colors.white,     
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => QuizPage()),
              ),
              child: Text('JOGAR'),
            ),
          ],
        ),
      ),
    );
  }
}