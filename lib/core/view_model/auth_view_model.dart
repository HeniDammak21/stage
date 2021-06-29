import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController{
  GoogleSignIn _googleSignIn=GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth=FirebaseAuth.instance;
  FacebookLogin _facebookLogin=FacebookLogin();
  String email,password,name ;

  @override
  void onInit()
  {
    // TODO :implement onInit
    super.onInit();
  }

  @override
  void onReady()
  {
    // TODO :implement onReady
    super.onReady();
  }

  @override
  void onClose()
  {
    // TODO :implement onClose
    super.onClose();
  }
  void googleSignInMethod() async{
    final GoogleSignInAccount googleUser=await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleUser.authentication;
    final AuthCredential credential =GoogleAuthProvider.credential(
      idToken:googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken ,
    );
    UserCredential userCredential=await _auth.signInWithCredential(credential);
    print(userCredential.user);

  }



  void facebookSigninMethod () async{
    FacebookLoginResult result= await _facebookLogin.logIn(['email']);

    final accessToken =result.accessToken.token;
    if(result.status==FacebookLoginStatus.loggedIn){
      final faceCredential =FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(faceCredential);

    }


  }
  void signInWithEmailAndPassword()async{
    try{
        await _auth.signInWithEmailAndPassword(email: email, password: password);

    }catch(e){
      print(e.message);
      Get.snackbar('Error login account', "Check your datas",
        colorText:Colors.red,snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}

