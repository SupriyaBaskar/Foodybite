import 'package:flutter/material.dart';
import 'package:foodybite/color.dart';
import 'package:foodybite/screens/login-screen.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context) => LoginScreen()));
          },
        child: Text(
          buttonName,
          style: KBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}