import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  bool showPass=false;
  var key =GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height:  MediaQuery.of(context).size.height,

            child: Column(

              children: [

                Image.asset("assets/images/logo.png",
                  width: 300,
                  height: 250,
                ),
                Text("Signup",
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                      color: Colors.green[800]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  child: Form(
                    key: key,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 25,
                                fontFamily: "poppins"

                            ),
                            prefixIcon: Icon(Icons.email_outlined),


                          ),
                          validator: (value){
                            if(value==""){
                              return "Please enter a valid email";
                            }


                          },

                        ),
                        TextFormField(
                          controller: pass,
                          obscureText:showPass? true:false,

                          decoration: InputDecoration(

                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "poppins"

                              ),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon:InkWell(
                                  onTap: (){

                                    setState(() {
                                      showPass=!showPass;
                                    });
                                  },
                                  child:showPass? Icon(Icons.remove_red_eye):Icon(Icons.visibility_off))


                          ),
                          validator: (value){
                            if(value==""){
                              return "Please enter a valid email";
                            }


                          },
                        ),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(onPressed: () async{
                          if(key.currentState!.validate()){
                            try {
                              await auth.createUserWithEmailAndPassword(
                                  email: email.text, password: pass.text);
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Dashboard();
                              }));
                            }on FirebaseAuthException catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(" ${e.code} - ${e.message}"))
                              );
                              print("${e.code} - ${e.message}");

                            }

                          }
                        },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text("Signup",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: 22
                                ),),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[800],
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17)
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg_image.png"),
                  fit: BoxFit.cover
              ),
            )
        ),
      ),
    );
  }
}
