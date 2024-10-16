import 'package:flutter/material.dart';
import 'package:timer_pomodoro/components/cronometro.dart';
import 'package:timer_pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(titulo: 'Trabalho', valor: 25),
                EntradaTempo(titulo: 'Descanso', valor: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
