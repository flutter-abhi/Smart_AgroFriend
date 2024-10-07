import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/background.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hello_krushi/Screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie/lottie.dart';
class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderState();
}

class _SliderState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(   

        
        skipTextButton: Text("Skip" , style: GoogleFonts.poppins(fontSize: 16 , color: Color.fromARGB(255, 67, 41, 237)),),
        
        controllerColor: Colors.green,
        totalPage: 3,
        speed: 2,
        headerBackgroundColor: Colors.white,
       background: [
        
         Container(),
         Container(),
         Container()
        ],

        onFinish: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const  HomePage();
          }));
        },
       finishButtonText: "सुरू करा",
       
       finishButtonStyle: FinishButtonStyle( 
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: Colors.green,
        
        
         ),
        finishButtonTextStyle: GoogleFonts.poppins(color: Colors.white , fontSize: 22 , fontWeight: FontWeight.w500 ),

        pageBodies: [  

          Container(  
            child: Column(  
              children: [  
              
                   Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height/2,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/2),
                      child: Lottie.asset("assets/job.json")
                      )),

                      const SizedBox(height: 30),
                

                
                   Container(
                    
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("कामाच्या संधी आता एका क्लिकवर !" , style: GoogleFonts.poppins(fontSize:30 , fontWeight: FontWeight.w500),
                    )),
              
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("काम शोधण्यासाठी आता फिरायची गरज नाही, Hello Krushi ऍप काम तुमच्यापर्यंत येईल !" , style: GoogleFonts.poppins(fontSize: 18 , fontWeight: FontWeight.w400),))



              ],
            ),
          ),
        
           Container(  
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [  
              
                   Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height/2.2,
                    width:  MediaQuery.of(context).size.width ,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular( MediaQuery.of(context).size.width/2),
                      child: Lottie.asset("assets/market.json")
                      )),

                      SizedBox(height: 35,),
                

                
                   Container(
                    
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("बाजारभाव जाणून घ्या अगोदरच" , style: GoogleFonts.poppins(fontSize:30 , fontWeight: FontWeight.w500),
                    )),
              
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("पीक बाजारभावाचा अचूक अंदाज, अधिक उत्पन्नासाठी 'Hello Krushi' तुमच्या सोबत!" , style: GoogleFonts.poppins(fontSize: 18 , fontWeight: FontWeight.w400),))



              ],
            ),
          ),
           Container(  
            child: Column(  
              children: [  
              
                   Container(
                    padding: EdgeInsets.only(bottom: 70 , left: 5,right: 5),
                    height: MediaQuery.of(context).size.height/2.2,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/2),
                      child: Lottie.asset("assets/plant.json")
                      )),
                      SizedBox(height: 30,),
                

                
                   Container(
                    
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("रोगांची अचूक ओळख" , style: GoogleFonts.poppins(fontSize:30 , fontWeight: FontWeight.w500),
                    )),
              
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    child: Text("पिकांवरील रोग ओळखा, 'Hello Krushi' ऍप सल्ल्यासोबत इतर शेतकऱ्यांची मदत मिळवा आणि उत्पादन वाढवा!" , style: GoogleFonts.poppins(fontSize: 18 , fontWeight: FontWeight.w400),))
                    



              ],
            ),
          ),

        ],
       
      ), 
    );
    
  }
}