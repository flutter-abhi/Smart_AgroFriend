import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_krushi/Screens/basic_screens/homepage.dart';
import 'package:hello_krushi/Screens/login_pages/district.dart';
import 'package:hello_krushi/Screens/login_pages/farmerLogin.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:hello_krushi/controller/SignUp_controller.dart';
import 'package:select2dot1/select2dot1.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:multiselect/multiselect.dart';
import 'package:provider/provider.dart';
class WhoIAm extends StatefulWidget {
  const WhoIAm({super.key});

  @override
  State<WhoIAm> createState() => _WhoIAmState();
}

class _WhoIAmState extends State<WhoIAm> {
  String? farmerArea = "१ एकर" ;
  String? selectedTaluka; 
  String? selectedDistrict;

  final List<String> workFields = [
    "पिकांची लागवड",
    "पशुपालन व्यवस्थापन",
    "शेतीतील यंत्रसामग्रीचे संचालन",
    "सिंचनाचे काम",
    "पिकांची कापणी व नंतरची कामे",
    "जमीन तयार करणे",
    "किडी व रोग व्यवस्थापन",
    "रोपवाटिका कामे",
    "मत्स्यपालन",
    "बांधकाम व देखभाल",
    "विशेष कामे",
    "इतर कामे",
  ];

  TextEditingController _name     = TextEditingController();
  TextEditingController _gaon     = TextEditingController();
  TextEditingController _phoneNum = TextEditingController();
  TextEditingController _password = TextEditingController();


  bool isLogin = false ;



  void btmSheet(){
     List<String> talukas = selectedDistrict != null
        ? districtTalukaMap[selectedDistrict] ?? []
        : [];
     showModalBottomSheet(
                          isScrollControlled: true,
                          context: context, 
                          builder: (context){
                            return Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [  
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("खालील माहिती भरा", style: TextStyle(fontSize: 19),),
                                    ],
                                  ),
                                   TextField( 
                                    controller:  _name ,
                                    decoration: const InputDecoration(  
                                      border: OutlineInputBorder(),
                                      hintText: "येथे नाव लिहा"
                                    ),
                                   ),
                                  const SizedBox(height: 5,),
                                   TextField( 
                                    controller: _gaon,
                                    decoration: const InputDecoration(  
                                      border: OutlineInputBorder(),
                                      hintText: "गावाचे नाव लिहा"
                                    ),
                                   ),
                                  const SizedBox(height: 5,),

                                  
                                 
                                    Row( 
                                      children: [ 
                                         Text("जिल्हा निवडा :",style: TextStyle(fontSize: 18)),
                                       DropdownButton<String>(
                                          hint: Text(" जिल्हा निवडा"),
                                          value: selectedDistrict,
                                          icon: Icon(Icons.arrow_drop_down),
                                          items: districtTalukaMap.keys.map((String district) {
                                            return DropdownMenuItem<String>(
                                              value: district,
                                              child: Text(district),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedDistrict = newValue;
                                              Navigator.pop(context);
                                              btmSheet();
                                            });
                                          },
                                       ),

                                      ],
                                    ),
                                     
                                       SizedBox(width: 20,),
                                       Row( 
                                        children: [ 
                                      const  Text("तालुका निवडा :",style: TextStyle(fontSize: 18)),
                                      const SizedBox(width: 5,),
                                       DropdownButton<String>(
                                          hint: Text("तालुका निवडा"),
                                          value: selectedTaluka,
                                          items: talukas.map((String taluka) {
                                            return DropdownMenuItem<String>(
                                              value: taluka,
                                              child: Text(taluka),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedTaluka = newValue;
                                              Navigator.pop(context);
                                              btmSheet();
                                            });
                                          },
                                        ),
                                        ],
                                       ),
                                        Row(
                                      children: [
                                       const Text("तुमचे क्षेत्र निवडा :",style: TextStyle(fontSize: 18),),
                                       const SizedBox(width: 10,),
                                       DropdownButton<String>(
                                        hint: Text("$farmerArea"),
                                        value: farmerArea,
                                            items: const[
                                              DropdownMenuItem(
                                                value: "१ एकर",
                                                child: Text("१ एकर"),
                                              ),
                                              DropdownMenuItem(
                                                value: "2 एकर",
                                                child: Text("2 एकर"),
                                              ),
                                              DropdownMenuItem(
                                                value: "3 एकर",
                                                child: Text("3 एकर"),
                                              ),
                                              DropdownMenuItem(
                                                value: "4 एकर",
                                                child: Text("4 एकर"),
                                              ),
                                              DropdownMenuItem(
                                                value: "5 एकर",
                                                child: Text("5 एकर"),
                                              ),
                                              DropdownMenuItem(
                                                value: "6 एकर",
                                                child: Text("6 एकर"),
                                              ),
                                            ],
                                            onChanged: (String? val) {
                                              setState(() {
                                                farmerArea = val ;
                                                Navigator.pop(context);
                                                btmSheet();
                                              });
                                            },
                                          ),
                                     ],
                                   ),


                                        TextField( 
                                          controller: _phoneNum,
                                        keyboardType: TextInputType.number,
                                        decoration: const  InputDecoration(  
                                          border: OutlineInputBorder(),
                                          hintText: "फोन नंबर"
                                        ),
                                      ),


                                       const  SizedBox(height: 5,),
                                        TextField( 
                                          controller: _password,
                                          keyboardType: TextInputType.phone,
                                          decoration: const  InputDecoration(  
                                            border: OutlineInputBorder(),
                                            hintText: "पिन तयार करा"
                                          ),
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(onPressed: (){

                                              setState(() {
                                                isLogin = true ;
                                              });
                                            
                                            }, child: Text("आधीच खाते आहे?")
                                            ),
                                          ],
                                        ),
                                       const  SizedBox(height: 50,),
                                       ElevatedButton( 
                                        style: ButtonStyle(  
                                          fixedSize: WidgetStatePropertyAll( 
                                            Size(MediaQuery.of(context).size.width-50, 30)
                                          ),
                                          backgroundColor: WidgetStatePropertyAll(Colors.green.shade100)

                                        ),
                                        onPressed: ()async {

                                          bool success = await Provider.of<SignupController>(context, listen: false).Signup(_name.text, _gaon.text, _phoneNum.text , selectedDistrict, selectedTaluka,farmerArea );
                                         

                                         if(success == true){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return HomePage(currentLanguage: "marathi");
                                          }));
                                         }
                                          // Navigator.pop(context);
                                        },
                                        child: const Text("नोंदणी करा ", style: TextStyle(fontSize: 20, color: Colors.black),),
                                       )
                                      ],
                                    )
                                  );
                                }
                              );
                            }
  @override
  Widget build(BuildContext context) {

    List<String> talukas = selectedDistrict != null
        ? districtTalukaMap[selectedDistrict] ?? []
        : [];
     
    return Scaffold(
      appBar: AppBar(  
        actions: [ 
          ElevatedButton(onPressed: (){

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){

              return HomePage(currentLanguage: "marathi");
            }));


          }, 
          child: const Text("Skip",style: TextStyle(fontSize: 17 , color: Colors.black),)
          ),

         const  SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
            const Text("तुम्ही कोण आहात ?", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [  
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){

                        btmSheet();
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Container( 
                            height: MediaQuery.of(context).size.width/2.5,
                            width:  MediaQuery.of(context).size.width/2.5,
                            child: Image.asset("assets/farmer.jpg"),
                          )
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text("शेतकरी",style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold))
                  ],
                ),
                 GestureDetector(
                  onTap: (){
                    btmSheet();
                  },
                   child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Container( 
                            height: MediaQuery.of(context).size.width/2.5,
                            width:  MediaQuery.of(context).size.width/2.5,
                            child: Image.asset("assets/labour.jpg"),
                          )
                      ),
                      const SizedBox(height: 5,),
                      const Text("मजूर",style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold))
                    ],
                   ),
                 ),
              ]
            )
          ],
        ),
      ),
    );
  }
}