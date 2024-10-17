// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer_pomodoro/components/botao_cronometro.dart';
import 'package:timer_pomodoro/store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.estaTrabalhando() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  store.estaTrabalhando()
                      ? 'Hora de Trabalhar'
                      : 'Hora de Descansar',
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              Text(
                  '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padRight(2, '0')}',
                  style: TextStyle(color: Colors.white, fontSize: 120)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  !store.iniciado
                      ? BotaoCronometro(
                          texto: 'Iniciar',
                          icone: Icons.play_arrow,
                          onClick: store.iniciar,
                        )
                      : BotaoCronometro(
                          texto: 'Parar',
                          icone: Icons.stop,
                          onClick: store.parar,
                        ),
                  BotaoCronometro(
                    texto: 'Reiniciar',
                    icone: Icons.refresh,
                    onClick: store.reiniciar,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
