import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPresses,
    super.key,
  });

  final String title;
  final void Function() onPresses;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresses,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: Colors.purple,
        fixedSize: Size(MediaQuery.of(context).size.width - 40, 55),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
