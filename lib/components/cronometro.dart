// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:timer_pomodoro/components/botao_cronometro.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hora de Trabalhar',
              style: TextStyle(color: Colors.white, fontSize: 40)),
          Text('03:00', style: TextStyle(color: Colors.white, fontSize: 120)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoCronometro(
                texto: 'Iniciar',
                icone: Icons.play_arrow,
              ),
              // BotaoCronometro(
              //   texto: 'Parar',
              //   icone: Icons.stop,
              // ),
              BotaoCronometro(
                texto: 'Reiniciar',
                icone: Icons.refresh,
              ),
            ],
          )
        ],
      ),
    );
  }
}
