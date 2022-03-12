import 'package:figma_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String insideText;
  final String? title;
  final bool obText;
  const MyTextField({
    Key? key,
    required this.insideText,
    required this.title,
    this.obText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '$title',
              style: kTextStyleBlack,
            ),
          ),
          TextField(
            obscureText: obText,
            decoration: InputDecoration(
              hintText: insideText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
