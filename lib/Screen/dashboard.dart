import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.green[400],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset("assets/images/logo.png",
          width: 25,
            height: 25,
          ),
        ),
        title: Column(
          children: [
            Text("Welcome",style: TextStyle(
              fontSize: 20
            ),),
            Text("Shaad",style: TextStyle(
              fontSize: 16
            ),)
          ],

        ),
        centerTitle: true,
        

      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg_image.png"),fit: BoxFit.cover)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(

                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/medicine.png",
                          width: 150,
                          height: 150,),
                          Text("My Medicine",
                          style: TextStyle(
                            fontSize: 24
                          ),
                          )
                        ],
                      ),
                    ),
                  ),

              Container(

                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/reminder.png",
                      width: 150,
                      height: 150,),
                    Text("My Medicine",
                      style: TextStyle(
                          fontSize: 24
                      ),
                    )
                  ],
                ),
              )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
