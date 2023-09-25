import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_instagram_clone/responsive/mobile_layout_screen.dart';
import 'package:new_instagram_clone/responsive/responsive_layout.dart';
import 'package:new_instagram_clone/responsive/web_layout_screen.dart';
import 'package:new_instagram_clone/utils/colors.dart';
import 'package:new_instagram_clone/view/signin.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBf3DI1jsjhWB23AfPlISvNFTESdcBRny8",
          appId: "1:353756208806:web:694e704a3bea36f0649e67",
          messagingSenderId:"353756208806",
          projectId: "instagramclone-57a01",
          storageBucket: "instagramclone-57a01.appspot.com"
      )
    );
  }else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor
      ),
      home: SigninView()

      // ResponsiveLayout(
      //   webscreenlayout: WebScreenLayout(),
        // mobilescreenlayout: MobileScreenLayout(),),

    );
  }
}

