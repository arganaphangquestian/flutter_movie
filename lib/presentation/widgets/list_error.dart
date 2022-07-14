import 'package:flutter/material.dart';

class ListError extends StatelessWidget {
  final String message;
  const ListError({Key? key, this.message = 'Error'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .7,
      width: MediaQuery.of(context).size.width,
      child: Center(child: Text(message)),
    );
  }
}
