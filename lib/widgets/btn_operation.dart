import 'package:flutter/material.dart';

class ButtonOperation extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const ButtonOperation({
    Key? key,
    required this.texto,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 26,
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
