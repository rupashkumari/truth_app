import 'package:flutter/material.dart';
//import 'package:truth/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:truth/home_page.dart';
//import 'package:truth/truth.dart';


void main() async{
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options : DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Truth and Dare',
      theme: ThemeData(
        


        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 216, 19, 5)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    
    );
  }
}

