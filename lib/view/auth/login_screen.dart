import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet3/constance.dart';
import 'package:projet3/core/view_model/auth_view_model.dart';
import 'package:projet3/view/auth/second_screen.dart';
import 'package:projet3/view/widgets/custom_button.dart';
import 'package:projet3/view/widgets/custom_button_socail.dart';
import 'package:projet3/view/widgets/custom_text.dart';
import 'package:projet3/view/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,



      ),

      body: Padding(
        padding: const EdgeInsets.only(top:50,
            right: 20,
            left: 20,
        ),
        child: Form(
          key:_formKey ,
          child: ListView(
            children: [
              Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  CustomText(
                    text: 'Welcome,',
                    fontSize: 30,


                  ),
                CustomText(
                  text: 'Sign Up',
                  fontSize: 18,
                  color: primaryColor,



                ),


              ],),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Sign in to continue',
                fontSize: 14,
                color: Colors.grey,


              ),
              SizedBox(
                height: 30,
              ),

              CustomTextFormField(
                text: 'Email',
                hint: 'henidammakk.123@gamil.com',
                onSave: (value){
                  controller.email=value;


                } ,
                validator: (value){
                  if(value==null){
                    print('ERROR');
                  }
                },
              ),

              SizedBox(height: 40,),

              CustomTextFormField(
                text: 'Password',
                hint: '*******',
                onSave: (value){
                  controller.password=value;
                } ,
                validator: (value){
                  if(value==null){
                    print('ERROR');
                  }
                },
              ),

              SizedBox(height: 20,),

              CustomText(
                text: 'Forgot Password ?',
                fontSize: 14,
                alignment: Alignment.topRight,

              ),

              SizedBox(height: 20,),

              CustomButton(
                onPressed: (){
                  controller.signInWithEmailAndPassword();
                  _formKey.currentState.save();
                  if(_formKey.currentState.validate()){

                  }
                },
                text: 'SIGN IN',
              ),

              SizedBox(height: 20,),

              CustomText(
                text: '-OR-',
                alignment: Alignment.center,

              ),

             SizedBox(
               height: 40,
             ),


              CustomButtonSocial(
                onPress: (){
                  controller.facebookSigninMethod();
                },
                text: 'Sign in with Facebook',
                imageName: 'assets/facebook.png',


              ),

              SizedBox(height: 20,
              ),

              CustomButtonSocial(
                text: 'Sign in with Google',
                onPress: (){
                  controller.googleSignInMethod();

                },
                imageName: 'assets/google.png',

              ),
            ],

          ),
        ),
      ),


    );
  }
}