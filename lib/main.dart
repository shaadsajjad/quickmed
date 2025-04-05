import 'package:flutter/material.dart';
import 'package:quickmed/Screen/screen_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(
          //brightness: Brightness.dark
        ),
        debugShowCheckedModeBanner: false,
        home: ScreenSplash()
      ),
    );
  }
}
