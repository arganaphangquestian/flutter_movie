import 'package:flutter/material.dart';

class CardError extends StatelessWidget {
  final String message;
  const CardError({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 180,
          color: Colors.black12,
          child: Center(child: Text(message)),
        ),
      ),
    );
  }
}
