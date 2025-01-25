import 'package:flutter/material.dart';

class Farmequipement extends StatefulWidget {
  const Farmequipement({super.key});

  @override
  State<Farmequipement> createState() => _AnimalMarketState();
}

class _AnimalMarketState extends State<Farmequipement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(  
        title: const Text("शेती उपकरणे भाड्याने घ्या"),
        actions: const[ 
          Icon(Icons.add_shopping_cart, size: 25,color: Colors.green,),
          SizedBox(width: 5,)

        ],
      ),
      body:  Column(
        children:[ 
           TextButton(
            style: ButtonStyle(  
              backgroundColor: const WidgetStatePropertyAll(Colors.green),
              fixedSize: WidgetStatePropertyAll(Size(MediaQuery.of(context).size.width-50,20))
            ),
            onPressed: (){

           }, child: const Text("विक्रेता बना",style: TextStyle(color: Colors.white,fontSize: 17 , fontWeight: FontWeight.bold),),
           ),
           TextButton(
            style: ButtonStyle( 
              backgroundColor: const WidgetStatePropertyAll(Colors.green),
              fixedSize: WidgetStatePropertyAll(Size(MediaQuery.of(context).size.width-50,20))

            ),
            onPressed: (){

           }, child: const Text("खरेदीदार बना",style: TextStyle(fontSize: 17 , color: Colors.white, fontWeight: FontWeight.bold ),),
           ),
            Expanded(
           
             child: ListView.builder(
              shrinkWrap: true,
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
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(  
                          backgroundImage: AssetImage("assets/animal1.jpeg"),
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
                              Row(
                                children: [
                                   Text("प्राण्याचे नाव / प्रकार :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    Expanded(child: Text(" गाय", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              
                          
                                ],
                              ),
                             
                              Row(
                                children: [
                                  Text("वय : ",style: TextStyle(fontSize: 17)),
                                  Container(
                                    width:MediaQuery.of(context).size.width/2.9,
                                    
                                    child: Text("२ वर्षे, ६ महिने.",style: TextStyle(fontSize: 17))),
                                ],
                              ),
                              const Row(  
                                children: [  
                                  Text("किंमत :",style: TextStyle(fontSize: 17)),
                                  Text("30,000 rs",style: TextStyle(fontSize: 17)),
                                ],
                              ),
                              const Row(  
                                children: [  
                                  Text("स्थान :",style: TextStyle(fontSize: 17)),
                                  Text("पुणे शहर",style: TextStyle(fontSize: 17)),
                                ],
                              ),
                              ElevatedButton(
                                style: ButtonStyle(  
                                  backgroundColor: WidgetStatePropertyAll(Colors.green.shade500),
                                  fixedSize: WidgetStatePropertyAll(Size(MediaQuery.of(context).size.width/2,15 )),
                                  shadowColor: WidgetStatePropertyAll(Colors.black),
                                  mouseCursor: const WidgetStatePropertyAll(MouseCursor.uncontrolled)
                                ),
                                onPressed: (){
                          
                              }, child: Text("पूर्ण तपशील पहा" ,style: TextStyle(color: Colors.white, fontSize: 16),)
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
           ),
        ]
      ),
    );
  }
}