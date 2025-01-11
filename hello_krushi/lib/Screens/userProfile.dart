
import "package:flutter/material.dart";

class UserProfile extends StatefulWidget {
   State createState(){
    return _userProfileState() ;
   }
}

class _userProfileState extends State<UserProfile>{

  @override   
  Widget build(BuildContext context){
    return  Scaffold(
      body:  Padding(
        padding: EdgeInsets.all(15),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
            const SizedBox(height: 20,),
            const Text("Farmer" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const Row( 
              children: [  
                CircleAvatar(  
                  radius: 50,
                  backgroundColor: Colors.grey,
                ) ,
                SizedBox(width: 20,),
        
                Row(  
                 
                  children: [  
                    Column(  
                      children: [ 
                        Text("0"),
                        Text("Post")
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(  
                      children: [ 
                        Text("0"),
                        Text("Labours")
                      ],
        
                    ),
                    SizedBox(width: 30,),

                    Column(  
                      children: [ 
                        Text("0"),
                        Text("following")
                      ],
                    )
                  ],
                ),
               
              ],
            ),
             const SizedBox(height: 20,),
             const Text("prajwal sunil kale", style: TextStyle(fontSize: 17),),
             const Text("bagayatdar", style: TextStyle(fontSize: 17),),
             const Text("aamhi satarkar", style: TextStyle(fontSize: 17),),

             SizedBox(height: 20,),

             const Text("Live Sites", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),

             Container(
              height: 230,
              color: Colors.green.shade100,
              width: MediaQuery.of(context).size.width,
              child: Padding(

                padding: const EdgeInsets.all(12),
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [  
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Container( 
                          margin: EdgeInsets.all(10),
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration( 
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column( 
                            children: [ 
                              Text("Start Date", style: TextStyle(fontSize: 16),),
                              Text("18 Nov", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                            ],
                          ),
                
                        ),
                        Container( 
                          margin: EdgeInsets.all(10),
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration( 
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Column( 
                            children: [ 
                              Text("Close Date", style: TextStyle(fontSize: 17),),
                              Text("-", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                    Row(
                      children: [
                        Text("Job Type -",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 15,),
                        Text("Harvesting" ,style: TextStyle(fontSize: 17) )
                      ],
                    ),
                    Row(
                      children: [
                        Text("No Of Labours -",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 15,),
                        Text("12" ,style: TextStyle(fontSize: 17) )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Working Day -",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 15,),
                        Text("4th" ,style: TextStyle(fontSize: 17) )
                      ],
                    ),
                    SizedBox(height: 5,),
                    ElevatedButton( 
                      onPressed: (){

                      },
                      child: Text("details"),
                    )
                  ],
                ),
              ),
              ),
              const SizedBox(height: 20,),
              const Text("Completed Sites", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),),

              Container(
              height: 210,
              color: Colors.green.shade100,
              width: MediaQuery.of(context).size.width,
              child: Padding(

                padding: const EdgeInsets.all(12),
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [  
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Container( 
                          margin: EdgeInsets.all(10),
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration( 
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column( 
                            children: [ 
                              Text("Start Date", style: TextStyle(fontSize: 16),),
                              Text("18 Nov", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                            ],
                          ),
                
                        ),
                        Container( 
                          margin: EdgeInsets.all(10),
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration( 
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Column( 
                            children: [ 
                              Text("Close Date", style: TextStyle(fontSize: 17),),
                              Text("25 Nov", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                    Row(
                      children: [
                        Text("Job Type -",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 15,),
                        Text("Harvesting" ,style: TextStyle(fontSize: 17) )
                      ],
                    ),
                    Row(
                      children: [
                        Text("No Of Labours -",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 15,),
                        Text("12" ,style: TextStyle(fontSize: 17) )
                      ],
                    ),
                   
                    SizedBox(height: 5,),
                    ElevatedButton( 
                      onPressed: (){

                      },
                      child: Text("details"),
                    )
                  ],
                ),
              ),
              ),

        
          ],
        ),
      ),

    );
  }
}