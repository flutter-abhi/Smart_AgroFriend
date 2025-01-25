import 'dart:convert'; // Add this import
import 'dart:developer';
import 'package:flutter/services.dart'; // Add this import
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/background.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hello_krushi/Screens/basic_screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_krushi/Screens/login_pages/whoIAm.dart';
import 'package:lottie/lottie.dart';
import '../../l10n/app_localization.dart'; // Import your localization class

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderState();
}

class _SliderState extends State<SliderPage> {
  String _currentLanguage = 'en'; // Default language
  Map<String, dynamic> _localizedStrings = {};

  @override
  void initState() {
    super.initState();
    _loadLocalizedStrings();
  }

  Future<void> _loadLocalizedStrings() async {
    try {
      String jsonString =
          await rootBundle.loadString('lib/l10n/$_currentLanguage.json');
      setState(() {
        // Decode the JSON and access the 'slider' map
        final Map<String, dynamic> decodedJson = json.decode(jsonString);
        // Access the 'slider' map and convert it to Map<String, String>
        _localizedStrings = Map<String, dynamic>.from(decodedJson as Map);
      });
    } catch (e) {
      log('Error loading localization: $e'); // Debugging line
    }
  }

  void changeLanguage(String languageCode) {
    setState(() {
      _currentLanguage = languageCode;
    });
    _loadLocalizedStrings(); // Load new strings after changing language
  }

  @override
  Widget build(BuildContext context) {
    // log(_localizedStrings['app_title']);
  
    // log(_localizedStrings['slider']['market_info']);
    // log(_localizedStrings['slider']['disease_identification']);
    // log(_localizedStrings['slider']['slider_text_1']);
    // log(_localizedStrings['slider']['slider_text_2']);
    // log(_localizedStrings['slider']['slider_text_3']);

    return Scaffold(
      appBar: AppBar(
        title: Text(_localizedStrings['app_title'] ?? 'Hello Krushi er'),
        actions: [
          DropdownButton<String>(
            value: _currentLanguage,
            items: const [
              DropdownMenuItem(value: 'en', child: Text('English')),
              DropdownMenuItem(value: 'hi', child: Text('हिंदी')),
              DropdownMenuItem(value: 'mr', child: Text('मराठी')),
            ],
            onChanged: (value) {
              if (value != null) {
                changeLanguage(value);
              }
            },
          ),
        ],
      ),
      body: OnBoardingSlider(
      
        controllerColor: Colors.green,
        totalPage: 3,
        speed: 2,
        headerBackgroundColor: Colors.white,
        background: [Container(), Container(), Container()],
        onFinish: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            //  return  HomePage(currentLanguage: _currentLanguage);
            return HomePage(currentLanguage: "marathi");
          
          }));
        },
        finishButtonText:
            _localizedStrings['slider']['start'] ?? 'Start',
        finishButtonStyle: FinishButtonStyle(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.green,
        ),
        finishButtonTextStyle: GoogleFonts.poppins(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        pageBodies: [
          SizedBox(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width / 2),
                    child: Lottie.asset("assets/job.json"),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      _localizedStrings['slider']['slider_text_1'] ??
                          "कामाच्या संधी आता एका क्लिकवर !",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      _localizedStrings['slider']['slider_text_2'] ??
                          "er काम शोधण्यासाठी आता फिरायची गरज नाही, Hello Krushi ऍप काम तुमच्यापर्यंत येईल !",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        child: Lottie.asset("assets/market.json"))),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      _localizedStrings['slider']['slider_text_3'] ??
                          "er बाजारभाव जाणून घ्या अगोदरच",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      _localizedStrings['slider']['slider_text_4'] ??
                          "er पीक बाजारभावाचा अचूक अंदाज, अधिक उत्पन्नासाठी 'Hello Krushi' तुमच्या सोबत!",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    )),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Container(
                    padding:
                        const EdgeInsets.only(bottom: 70, left: 5, right: 5),
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        child: Lottie.asset("assets/plant.json"))),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      _localizedStrings['slider']['slider_text_5'] ??
                          "erरोगांची अचूक ओळख",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 60,
                  child: Text(
                    _localizedStrings['slider']['slider_text_6'] ??
                        "er पिकांवरील रोग ओळखा, 'Hello Krushi' ऍप सल्ल्यासोबत इतर शेतकऱ्यांची मदत मिळवा आणि उत्पादन वाढवा!",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
