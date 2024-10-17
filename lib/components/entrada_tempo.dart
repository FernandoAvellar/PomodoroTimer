import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer_pomodoro/store/pomodoro.store.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo, style: const TextStyle(fontSize: 25)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Observer(
                builder: (_) => IconButton(
                  icon: const Icon(Icons.arrow_downward,
                      color: Colors.white, size: 20),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          store.estaTrabalhando() ? Colors.red : Colors.green),
                  onPressed: dec,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$valor min', style: const TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Observer(
                builder: (_) => IconButton(
                  icon: const Icon(Icons.arrow_upward,
                      color: Colors.white, size: 20),
                  style: IconButton.styleFrom(
                      backgroundColor:
                          store.estaTrabalhando() ? Colors.red : Colors.green),
                  onPressed: inc,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
