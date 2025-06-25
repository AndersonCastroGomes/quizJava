import 'package:flutter/material.dart';
import 'quiz.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background bege do Scaffold
      backgroundColor: Color.fromARGB(255, 244, 234, 218),
 // bege claro (beige)
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.png', height: 400),
            SizedBox(height: 20),
            Text(
              'JAVA QUIZ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60), // largura 200, altura 60
                textStyle: TextStyle(fontSize: 24), // texto maior
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
