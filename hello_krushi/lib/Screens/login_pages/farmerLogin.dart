import 'package:flutter/material.dart';

class FarmerLogin extends StatefulWidget {
  const FarmerLogin({super.key});

  @override
  State<FarmerLogin> createState() => _FarmerLoginState();
}

class _FarmerLoginState extends State<FarmerLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
            SizedBox(height: 20,),
            Text("येथे नाव लिहा :" , style: TextStyle(fontSize: 18),),
            TextField(
              decoration: InputDecoration( 
                border: OutlineInputBorder()
              ),
            )
           
          ],
        ),
      )
    );
  }
}