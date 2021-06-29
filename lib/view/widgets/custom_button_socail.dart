import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  CustomButtonSocial({
    this.text,
    this.imageName,
    this.onPress,

});


@override
Widget build(BuildContext context) {
return Container(

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade200,
  ),
  child: FlatButton(onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            imageName,width:23,height: 30,
          ),
          SizedBox(width: 50,),
          CustomText(
            text: text,
          )
        ],
      )
  ),
);
}
}