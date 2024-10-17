import 'package:flutter/material.dart';

class BotaoCronometro extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function() onClick;

  const BotaoCronometro({
    super.key,
    required this.texto,
    required this.icone,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: onClick,
          icon: Icon(icone, color: Colors.white, size: 30),
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
          ),
          label: Text(texto, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
