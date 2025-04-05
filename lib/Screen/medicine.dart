import 'package:flutter/material.dart';
import 'package:quickmed/Screen/addmedicine.dart';

class Medicine extends StatefulWidget {
  const Medicine({super.key});

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Addmedicine()));
      },
      backgroundColor: const Color(0xFF71D5CA),
          child:  Icon(Icons.add,
          size: 30,
        ),
        shape: CircleBorder()
      ),
      appBar: AppBar(
        backgroundColor:Color(0xFF71D5CA),

        title: Text("My Medicines"),

        centerTitle: true,


      ),
    body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg_image.png"),
              fit: BoxFit.cover
          )
      ),
      child: const ListTile(),
    )
    );
  }
}
