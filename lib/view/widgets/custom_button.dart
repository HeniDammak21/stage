import 'package:flutter/material.dart';
import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CustomButton({
    this.text,
    this.onPressed,

});



@override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(15),
      onPressed: onPressed,
      color: primaryColor,
      child: CustomText(
        text: 'SIGN IN',
        alignment: Alignment.center,
      ),
    );

  }
}