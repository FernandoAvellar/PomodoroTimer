import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({super.key, required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo, style: const TextStyle(fontSize: 25)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: IconButton(
                icon: const Icon(Icons.arrow_downward,
                    color: Colors.white, size: 15),
                style: IconButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$valor min', style: const TextStyle(fontSize: 18)),
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: IconButton(
                icon: const Icon(Icons.arrow_upward,
                    color: Colors.white, size: 15),
                style: IconButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
