import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text('Tarefas', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task(
                  "Aprender Flutter",
                  "images/01flutter.jpg",
                  3),
              Task(
                  "Aprender Dart",
                  "images/02dart.png",
                  2),
              Task(
                  "Meditar",
                  "images/03meditar.jpeg",
                  1),
              Task("Jogar",
                  "images/04jogar.jpg", 4),
              Task(
                  "Ler",
                  "images/05ler.jpg",
                  1),
              Task(
                  "Andar de bike",
                  "images/06bike.jpeg",
                  5),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
          child: const Icon(Icons.remove_red_eye),
        ),
      );
  }
}