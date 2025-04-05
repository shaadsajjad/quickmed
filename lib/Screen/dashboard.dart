import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickmed/Screen/medicine.dart';

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
       backgroundColor: Color(0xFF71D5CA)
        ,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset("assets/images/logo.png",
          width: 30,
            height: 30,
            fit: BoxFit.cover,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person,
              size: 35,
            ),
          )
        ],
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
              child: GridView.count(
                shrinkWrap: true,
               // physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 25,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [

                  // First Item
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Medicine();
                      }));
      },
                    child: Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/medicine.png",
                            width: 150,
                            height: 150,
                          ),
                         // SizedBox(height: 8),
                          Text(
                            "My Medicine",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Second Item
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/reminder.png",
                          width: 150,
                          height: 150,
                        ),
                      //  SizedBox(height: 8),
                        Text(
                          "My Reminder",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),

                  // Third Item
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/doctor.png",
                          width: 150,
                          height: 150,
                        ),
                      //  SizedBox(height: 8),
                        Text(
                          "Consult Doctor",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),

                  // Fourth Item
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/reportt.png",
                          width: 150,
                          height: 150,
                        ),
                       // SizedBox(height: 8),
                        Text(
                          "My Reminder",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
