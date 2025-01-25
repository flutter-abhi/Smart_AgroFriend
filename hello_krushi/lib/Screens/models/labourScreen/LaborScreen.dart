import 'package:flutter/material.dart';

class Laborscreen extends StatefulWidget {
  const Laborscreen({super.key});

  @override
  State<Laborscreen> createState() => _LaborscreenState();
}

class _LaborscreenState extends State<Laborscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text("येथे मजूर शोधा."),
        
      ),
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (context , index){
           return Padding(
              padding:const EdgeInsets.all(7),
             child: Container( 
              
              decoration: BoxDecoration(  
                color: Colors.green.shade50 ,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(138, 0, 0, 0)),
                 boxShadow: const [ 
                  BoxShadow( 
                    offset: Offset(1, 1),
                    spreadRadius: 0.1,
                    blurRadius: 5,
                    color: Color.fromARGB(94, 0, 0, 0)
                  ),
                 ]
              ),
              child: Row(
                children: [  
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: CircleAvatar(  
                      backgroundImage: AssetImage("assets/crop.jpeg"),
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     
                      width: MediaQuery.of(context).size.width-130,
                      child: Column(  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                          const Text("Prajval Sunil Kale", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          const Row(
                            children: [
                              Text("शेतीचे क्षेत्रफळ : ",style: TextStyle(fontSize: 17)),
                               Text("6 एकर",style: TextStyle(fontSize: 17)),
                      
                            ],
                          ),
                         
                          Row(
                            children: [
                              const Text("कामाचा प्रकार : ",style: TextStyle(fontSize: 17)),
                              Container(
                                width:MediaQuery.of(context).size.width/2.9,
                                
                                child: const Text("पाण्याचा पुरवठा",style: TextStyle(fontSize: 17))),
                      
                            ],
                          ),
                          const  Row(  
                            children: [  
                              Text("कामाची तारीख :",style: TextStyle(fontSize: 17)),
                              Text("17/01/2025",style: TextStyle(fontSize: 17)),
                            ],
                          ),
                          ElevatedButton(
                            style: ButtonStyle(  
                              backgroundColor: WidgetStatePropertyAll(Colors.green.shade500),
                              fixedSize: WidgetStatePropertyAll(Size(MediaQuery.of(context).size.width/2,15 ))
                            ),
                            onPressed: (){
                      
                          }, child: const Text("पूर्ण तपशील पहा" ,style: TextStyle(color: Colors.white, fontSize: 16),)
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
             ),
           );
        },
        ),
      
      

    );
  }
}