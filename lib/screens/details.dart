import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Details Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We are in the details page now",
              style: TextStyle(fontSize: 25),
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_back_ios),
              onPressed: ()=>{
                Navigator.pop(context)
              },
            )
          ],
        ),
      ),
    );
  }
}
