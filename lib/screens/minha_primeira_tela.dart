import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(color: Colors.blue, width: 50, height: 50),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(color: Colors.red, width: 50, height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.cyan,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pink,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            height: 30,
            width: 300,
            child: const Text(
              'Diamente Amarelo',
              style: TextStyle(fontSize: 28, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // print("Você aoertou o Botão");
            },
            child: const Text('Aperte o botão!'),
          ),
        ],
      ),
    );
  }
}
