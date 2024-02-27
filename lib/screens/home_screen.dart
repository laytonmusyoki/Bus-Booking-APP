import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/screens/details.dart';
import 'package:home/screens/login.dart';
import 'package:home/screens/main_drawer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase=Supabase.instance.client;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future <void> signOut() async{
      await supabase.auth.signOut();
      if(!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You have been logged out')));
      Navigator.of(context).pushNamed('/');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Home Page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              IconButton(
                onPressed: signOut,
                icon: Icon(Icons.logout,color: Colors.white,),
              )
            ],
          ),
        )

      ),
      drawer: const mainDrawer(),
     body: ListView(
       children: [
         Column(
           children: [
             Padding(
               padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
               child: Container(
                 width: double.infinity,
                 height: 250,
                 color: Color.fromARGB(255, 4, 190, 138),
               ),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
               child: Container(
                 width: double.infinity,
                 height: 250,
                 color: Colors.white,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     Padding(
                       padding: EdgeInsets.all(5),
                       child: Container(
                         height: 150,
                         width: 300,
                         decoration: BoxDecoration(
                           color: Colors.green.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(20)
                         ),
                         child: Center(
                           child: Column(
                             children: [
                               Text(
                                 "Solo Travel",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   color: Colors.grey,
                                   fontSize: 30
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(5),
                       child: Container(
                         height: 150,
                         width: 300,
                         decoration: BoxDecoration(
                             color: Color.fromARGB(255, 0, 157, 243).withOpacity(0.2),
                             borderRadius: BorderRadius.circular(20)
                         ),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(5),
                       child: Container(
                         height: 150,
                         width: 300,
                         decoration: BoxDecoration(
                             color: Color.fromARGB(112, 115, 157, 137).withOpacity(0.2),
                             borderRadius: BorderRadius.circular(20)
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
               child: Container(
                 width: double.infinity,
                 height: 250,
                 color: Color.fromARGB(255, 4, 190, 138),
               ),
             ),
           ],
         )
       ],
     ),
    );
  }

}

//
// body: Container(
// padding: const EdgeInsets.all(15),
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
// onTap: ()=>{
// Navigator.of(context).pushNamed('/solo')
// },
// child: Container(
// width: 200,
// height: 200,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.blue.withOpacity(0.3),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.5),
// spreadRadius: 5.0,
// blurRadius: 7,
// offset: Offset(0,3)
// ),
// ]
// ),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.person,size: 80,color: Colors.yellow,),
// SizedBox(height: 10,),
// Text(
// "Solo Travel",
// style: TextStyle(
// color: Colors.brown,
// fontSize: 22,
// fontWeight: FontWeight.bold
// ),
// )
// ],
// )
// ),
// ),
// ),
// GestureDetector(
// onTap: ()=>{
// Navigator.of(context).pushNamed('/register')
// },
// child: Container(
// width: 200,
// height: 200,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.green.withOpacity(0.3),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.5),
// spreadRadius: 5.0,
// blurRadius: 7,
// offset: Offset(0,3)
// ),
// ]
// ),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//
// )
// ],
// )
// ),
// ),
// ),],
// ),
// const SizedBox(height: 30,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
// onTap: ()=>{
// Navigator.of(context).pushNamed('/login')
// },
// child: Container(
// width: 200,
// height: 200,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.orange.withOpacity(0.3),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.5),
// spreadRadius: 5.0,
// blurRadius: 7,
// offset: Offset(0,3)
// ),
// ]
// ),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.school,size: 80,color: Colors.teal,),
// SizedBox(height: 10,),
// Text(
// "Institution booking",
// style: TextStyle(
// color: Colors.brown,
// fontSize: 22,
// fontWeight: FontWeight.bold
// ),
// )
// ],
// )
// ),
// ),
// ),
// GestureDetector(
// onTap: ()=>{
// Navigator.of(context).pushNamed('/register')
// },
// child: Container(
// width: 200,
// height: 200,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.purple.withOpacity(0.5),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.5),
// spreadRadius: 5.0,
// blurRadius: 7,
// offset: Offset(0,3)
// ),
// ]
// ),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.local_shipping,size: 80,color: Colors.green.withOpacity(0.6),),
// SizedBox(height: 10,),
// Text(
// "Percel sending",
// style: TextStyle(
// color: Colors.white,
// fontSize: 22,
// fontWeight: FontWeight.bold
// ),
// )
// ],
// )
// ),
// ),
// ),],
// )
// ],
// ),
// )