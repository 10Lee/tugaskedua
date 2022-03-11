import 'package:figma_ui/screens/homescreen.dart';

import 'package:flutter/material.dart';

import 'package:figma_ui/constants/constant.dart';

class MyTextButton extends StatelessWidget {
  final String label;
  const MyTextButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen())),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            '$label',
            style: kTextStyleWhite,
          ),
        ),
      ),
    );
  }
}
