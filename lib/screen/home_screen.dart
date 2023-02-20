import 'package:code_factory_flutter/const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int number;
  const HomeScreen({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('asset/img/$number.png'),
        ),
        const SizedBox(height: 32.0),
        Text(
          'lucky number',
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          number.toString(),
          style: const TextStyle(
            color: primaryColor,
            fontSize: 60,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
