import 'package:flutter/material.dart';
import 'package:home/screens/colors/solo.dart';
import 'package:home/screens/details.dart';
import 'package:home/screens/home_screen.dart';
import 'package:home/screens/login.dart';
import 'package:home/screens/register.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: "https://jwbvafbxgvztxbtfhask.supabase.co", anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp3YnZhZmJ4Z3Z6dHhidGZoYXNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg5NTkxMjksImV4cCI6MjAyNDUzNTEyOX0.sf3S682zsUvSXffTiuKxfDpG6noQeamQ_XgLlZyR-Ec");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // initialRoute: '/details',
      routes: {
        '/':(_)=>HomeScreen(),
        '/details':(_)=>DetailsScreen(),
        '/login':(_)=>Login(),
        '/register':(_)=>Register(),
        '/solo':(_)=>SoloTravel(),
      },
    );
  }
}

