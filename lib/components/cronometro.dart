// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
              style: TextStyle(color: Colors.white, fontSize: 24)),
          Text('03:00', style: TextStyle(color: Colors.white, fontSize: 54)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
                    ),
                    label:
                        Text('Iniciar', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.restart_alt, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
                    ),
                    label: Text('Reiniciar',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
