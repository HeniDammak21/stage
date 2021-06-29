import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet3/core/view_model/auth_view_model.dart';
//stateManegement
///getBuilder --not reactive
/// Getx --reactive --stream
/// obx

class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    AuthViewModel viewModel =Get.put(AuthViewModel());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
                  ()=>Text("")),
          RaisedButton(
            child: Text('increment'),
              onPressed: (){
              },
              ),
        ],
      ),


    );
  }
}