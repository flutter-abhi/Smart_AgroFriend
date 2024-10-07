import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hello_krushi/functions/bottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List service = [
    {
      "serviceName": "मजूर मिळवा",
      "backImage": "assets/labour1.png",
    },
    {
      "serviceName": "नोकरी संधी",
      "backImage": "assets/farmer.png",
    },
    {
      "serviceName": "बाजारभाव माहिती",
      "backImage": "assets/market.png",
    },
    {
      "serviceName": "पशुपालन",
      "backImage": "assets/animal.png",
    },
    {
      "serviceName": "स्मार्ट शेती",
      "backImage": "assets/smart.png",
    },
    {
      "serviceName": "पिक रोग माहिती",
      "backImage": "assets/plant.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 15),
        child: FloatingActionButton(
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            backgroundColor: Colors.white,
            splashColor: Colors.green,
            onPressed: () {},
            child: const Icon(Icons.people_outline)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const GetBottomBar(),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: const Icon(Icons.density_medium_outlined),
        title: Image.asset(
          "assets/hellokrushi.png",
          height: 100,
          width: 100,
        ),
        actions: const [
          Icon(
            Icons.bookmark_outline,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          //Image.asset("assets/news.png", height: 45,width: 45,),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ImageSlideshow(
                    initialPage: 0,
                    autoPlayInterval: 4000,
                    isLoop: true,
                    width: double.infinity,
                    height: 165,
                    children: [
                      Container(
                        color: Colors.pink,
                        child: Image.asset(
                          "assets/top1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.yellow,
                        child: Image.asset(
                          "assets/top1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        child: Image.asset(
                          "assets/top1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      )
                    ]),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                "आमच्या सेवा",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(parent: null),
                  itemCount: service.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisExtent: MediaQuery.of(context).size.width / 1.8,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            height: MediaQuery.of(context).size.width / 2.3,
                            width: MediaQuery.of(context).size.width / 2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      // offset: Offset(2, 2),
                                      spreadRadius: 0.5,
                                      blurRadius: 1,
                                      color: Colors.grey)
                                ]),
                            child: Image.asset(
                              service[index]["backImage"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.green.shade400,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(2, 2),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      color: Colors.grey)
                                ]),
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Text(
                              service[index]["serviceName"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                      ],
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Text("शेती विषयक अपडेट्स" ,style: GoogleFonts.poppins(fontSize: 20 ,),) ,
              // const  SizedBox(height: 10,),
              // Container(
              //   child: ListView.builder(
              //     itemCount: 5,
              //     shrinkWrap: true,
              //     physics: const ScrollPhysics(parent: null),
              //     itemBuilder: (context ,index){
              //       return  Container(
              //          margin: EdgeInsets.only(bottom: 5),
              //          height: MediaQuery.of(context).size.width/2.2,
              //           width: MediaQuery.of(context).size.width/2.2,
              //           decoration:   BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.blue ,
              //             boxShadow: const  [
              //               BoxShadow(
              //                 offset: Offset(2, 2),
              //                 spreadRadius: 0.5,
              //                 blurRadius: 2,
              //                 color: Colors.grey
              //               )
              //             ]
              //           ),
              //         );
              //     }
              //     ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
