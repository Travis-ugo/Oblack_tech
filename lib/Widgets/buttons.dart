import 'package:flutter/material.dart';

class SButton extends StatelessWidget {
  const SButton({Key? key, required this.pIcons, required this.onPressed})
      : super(key: key);
  final IconData pIcons;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      color: const Color(0xFFB20000),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            pIcons,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// Long button
class LButton extends StatelessWidget {
  const LButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 80,
        color: const Color(0xFFB20000),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class DButton extends StatelessWidget {
  const DButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 45,
        width: 45,
        color: const Color(0xFF00FF0C),
        child: const Center(
            child: Text(
          'Done',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
