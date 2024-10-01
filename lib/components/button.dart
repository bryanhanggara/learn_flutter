//Buat Class untuk custom button nya
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String? hintText;
  final int maxLines;
  const CustomTextButton({super.key, this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: const UnderlineInputBorder(),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        maxLines: maxLines,
      ),
    );
  }
}
