import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickmed/Screen/dashboard.dart';

import 'login_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void openLogin(){
  Navigator.push(context, MaterialPageRoute(builder: (context){
  return LoginScreen();
  }));
}void openDashboard(){
  Navigator.push(context, MaterialPageRoute(builder: (context){
  return Dashboard();
  }));
}

  void initState() {
    var check=FirebaseAuth.instance.currentUser;
    Future.delayed(Duration(seconds: 4),(){
      if(check==null)
     openLogin();
      else
        openDashboard();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            AnimatedTextKit(
              animatedTexts: [
               TyperAnimatedText("QuickMed",

               speed: Duration(milliseconds: 325),

                 textStyle: TextStyle(
                   fontFamily: "poppins",
                     fontSize: 45,
                     fontWeight: FontWeight.w900,
                     color: Colors.green[800]
                 )
               ),


            ],


            // style: TextStyle(
            //   fontFamily: "poppins",
            //
            //   fontSize: 45,
            //   fontWeight: FontWeight.w500,
            //   color: Colors.green[800]
            // ),
            )
          ],
        ),
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("assets/images/bg_image.png"),
           fit: BoxFit.cover
         ),
       )
              ),
    );
  }
}
