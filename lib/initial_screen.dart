import 'package:flutter/material.dart';
import 'package:primeiro_projeto/task.dart';

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
          title: Text('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task(
                  "Aprender Flutter",
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                  3),
              Task(
                  "Aprender Dart",
                  "https://blog.codapp.com.br/wp-content/uploads/2023/02/9nmssvliot8mzseyuqdx.png",
                  2),
              Task(
                  "Meditar",
                  "https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg",
                  1),
              Task("Jogar",
                  "https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg", 4),
              Task(
                  "Ler",
                  "https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg",
                  1),
              Task(
                  "Andar de bike",
                  "https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
          child: Icon(Icons.remove_red_eye),
        ),
      );
  }
}