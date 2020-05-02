import 'package:flutter/material.dart';
import 'ResultPage.dart';

GestureDetector BottomButton(BuildContext context, Function direct, String text) {
  return GestureDetector(
    onTap: direct,
    child: Container(
      color: Colors.pink,
      height: 70,
      width: double.infinity,
      child: Center(child: Text(text, style: TextStyle(fontSize: 20, letterSpacing: 2, fontWeight: FontWeight.w800))),
    ),
  );
}