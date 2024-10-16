import 'package:flutter/material.dart';
import 'package:timer_pomodoro/components/cronometro.dart';
import 'package:timer_pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro Timer'),
      ),
      body: const Column(
        children: [
          Cronometro(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntradaTempo(titulo: 'Trabalho', valor: 25),
              EntradaTempo(titulo: 'Descanso', valor: 5),
            ],
          ),
        ],
      ),
    );
  }
}
