import 'dart:io';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addmedicine extends StatefulWidget {
  const Addmedicine({super.key});

  @override
  State<Addmedicine> createState() => _AddmedicineState();
}
var key = GlobalKey<FormState>();
TextEditingController name=TextEditingController();
TextEditingController dosage=TextEditingController();
TextEditingController breakfast=TextEditingController();
TextEditingController lunch=TextEditingController();
TextEditingController dinner=TextEditingController();
File? pickimage;


class _AddmedicineState extends State<Addmedicine> {
  show(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(

        title: Text("Select Image from"),
        actions: [
          ListTile(
            onTap: (){
              pick(ImageSource.camera);
            },
            leading: Icon(Icons.camera_alt),
            title: Text("camera"),
          ), ListTile(
            onTap: (){
              pick(ImageSource.gallery);
            },
            leading: Icon(Icons.image),
            title: Text("device"),
          )
        ],
      );
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor:Color(0xFF71D5CA),
          title: Text("Add Medicines"),

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
          child: Form(
            key: key,
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                    controller: name,
                    decoration:InputDecoration(
                      hintText: "Name of medincine",
                      labelText: "Name",

                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                      controller: dosage,
                      decoration:InputDecoration(
                        hintText: "Enter dosage (ex:- 500mg)",
                        labelText: "Dosage",

                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                    controller: dosage,
                    decoration:InputDecoration(
                      hintText: "Enter dosage (ex:- 500mg)",
                      labelText: "Breakfast",

                    )
                  ),
                ), Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                    controller: dosage,
                    decoration:InputDecoration(
                      hintText: "Enter dosage (ex:- 500mg)",
                      labelText: "Lunch",

                    )
                  ),
                ) ,Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                    controller: dosage,
                    decoration:InputDecoration(
                      hintText: "Enter dosage (ex:- 500mg)",
                      labelText: "Dinner",

                    )
                  ),
                ) ,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextFormField(
                    controller: dosage,
                    decoration:InputDecoration(
                      hintText: "Enter dosage (ex:- 500mg)",
                      labelText: "Availale stock",

                    )
                  ),
                ) ,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("When should this medicine be taken?"),
                      SizedBox(height: 5,),
                      DropdownButtonFormField<String>(
                      isExpanded: false,
                       // menuMaxHeight: 50,
                        //itemHeight: 25,

                        items: [
                          DropdownMenuItem(value: "before", child: Text("Before eating")),
                          DropdownMenuItem(value: "after", child: Text("After eating")),
                         // DropdownMenuItem(value: "anytime", child: Text("Doesn’t matter")),
                        ],

                        onChanged: (value) {
                          // handle selection
                        },
                        decoration: InputDecoration(
                         // border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      )

                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Column(

                      children: [
                        Text("please insert an Image"),
                        SizedBox(height: 5,),
                        ElevatedButton(onPressed: (){
                          show(context);
                          setState(() {

                          });

                        }, child:Text("choose file"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFF71D5CA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          
                        ),
                        ),
                      ],
                    ),
                  ),
                )


              ],
            )
          )
        )
    );
  }
  pick(ImageSource imagesoure) async{
    try{
      final photo=await ImagePicker().pickImage(source: imagesoure);
      if(photo==null)
        return;

      final temp=File(photo.path);
      pickimage=temp;
      setState((){

      });



    }catch(e){
      print("missing");
    }
  }
}
