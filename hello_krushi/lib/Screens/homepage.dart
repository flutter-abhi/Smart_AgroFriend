import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hello_krushi/Screens/userProfile.dart';
import 'package:hello_krushi/functions/bottombar.dart';
import 'package:hello_krushi/l10n/app_localization.dart';

class HomePage extends StatefulWidget {
  final String currentLanguage; // Add this parameter

  const HomePage(
      {super.key, required this.currentLanguage}); // Update constructor

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List service = [
    {
      "serviceName": "service_name_1", // Use keys for localization
      "backImage": "assets/labour1.png",
    },
    {
      "serviceName": "service_name_2",
      "backImage": "assets/farmer.png",
    },
    {
      "serviceName": "service_name_3",
      "backImage": "assets/market.png",
    },
    {
      "serviceName": "service_name_4",
      "backImage": "assets/animal.png",
    },
    {
      "serviceName": "service_name_5",
      "backImage": "assets/smart.png",
    },
    {
      "serviceName": "service_name_6",
      "backImage": "assets/plant.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    // Load the localization based on the selected language
    AppLocalizations.load(Locale(widget.currentLanguage));

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
        actions:  [
          Icon(
            Icons.bookmark_outline,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          //Image.asset("assets/news.png", height: 45,width: 45,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return UserProfile();
              }));
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
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
                AppLocalizations.translate("home.servicesTitle") ??
                    "Services", // Use localized title
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
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
                            AppLocalizations.translate(
                                    "[home][${service[index]["serviceName"]}]" ??
                                        "er") ??
                                "er2",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
