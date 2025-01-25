import 'package:flutter/material.dart';
import 'package:hello_krushi/Screens/basic_screens/slider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hello_krushi/controller/Login_controller.dart';
import 'package:hello_krushi/controller/SignUp_controller.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localization.dart';

// Example providers
// import 'providers/auth_provider.dart'; // Manage user authentication
// import 'providers/theme_provider.dart'; // Manage app themes
// import 'providers/language_provider.dart'; // Manage app language

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<SignupController>( 
          create: (context){
            return SignupController();
          },
        )
        
       
      ],
      child: const  MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SliderPage(),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate, // Add your localization delegate
            ],
            supportedLocales: const [
              Locale('en', ''), // English
              Locale('hi', ''), // Hindi
              Locale('mr', ''), // Marathi
            ],
          
    
        
      )
    );
  }
}
