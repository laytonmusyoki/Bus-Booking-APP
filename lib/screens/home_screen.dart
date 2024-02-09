import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/screens/details.dart';
import 'package:home/screens/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      drawer: mainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We are in the Home Page now",
              style: TextStyle(fontSize: 29),
            ),
            ElevatedButton(
              child: Text('Go to details'),
              onPressed: ()=>{
               Navigator.of(context).pushNamed('/details')
              },
            ),
            ElevatedButton(
              child: Text(
                "Go to login",
              ),
              onPressed: ()=>{
                Navigator.of(context).pushNamed('/login')
              },
            )
          ],
        ),
      ),
    );
  }
}
