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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Home Page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              IconButton(
                onPressed: signOut,
                icon: Icon(Icons.logout,color: Colors.grey,),
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
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: EdgeInsets.all(20),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                 "15%",
                                 style: TextStyle(
                                   fontSize: 60,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.grey
                                 ),
                               ),
                               Text(
                                 "Today's Special!",
                                 style: TextStyle(
                                     fontSize: 40,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey
                                 ),
                               ),
                               Text(
                                 "Get discount for every",
                                 style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey
                                 ),
                               ),
                               Text(
                                 "booking.only valid for today",
                                 style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey
                                 ),
                               )
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20.0),
                           child: Container(
                             width: 150, // Set the desired width
                             height: 200, // Set the desired height
                             child: Image.asset(
                               'assets/images/bus1.jpg',
                               fit: BoxFit.cover, // Adjust the fit property according to your requirements
                             ),
                           ),
                         )

                       ],
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(height: 20,),
             Text(
               "Categories",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 40,
                 color: Colors.grey,
               ),
             ),
             SizedBox(height: 10,),
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
                           color: Colors.grey.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                            BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0,3),

                            )
                            ]
                         ),
                         child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Solo Booking",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey,
                                     fontSize: 30
                                 ),
                               ),
                               Container(
                                 width: 80,
                                   height: 80,
                                   decoration: BoxDecoration(
                                     color: Colors.green.withOpacity(0.4),
                                     borderRadius: BorderRadius.circular(10),
                                     boxShadow: [
                                       BoxShadow(
                                         blurRadius: 7,
                                         spreadRadius: 5,
                                         offset: Offset(5,10),
                                         color: Colors.grey.withOpacity(0.3)
                                       )
                                     ]
                                   ),
                                   child: Icon(Icons.person,size: 50,color: Colors.orange)),
                               SizedBox(height: 20,),
                               Container(
                                 width: 155,
                                 child: ElevatedButton(
                                   onPressed: null,
                                   child: Text(
                                     "Explore...",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),
                                   style: ButtonStyle(
                                     backgroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.6))
                                   )
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
                         child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Institution Booking",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey,
                                     fontSize: 30
                                 ),
                               ),
                               Container(
                                   width: 80,
                                   height: 80,
                                   decoration: BoxDecoration(
                                       color: Colors.green.withOpacity(0.2),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 7,
                                             spreadRadius: 5,
                                             offset: Offset(5,10),
                                             color: Colors.grey.withOpacity(0.3)
                                         )
                                       ]
                                   ),
                                   child: Icon(Icons.school,size: 50,)),
                               SizedBox(height: 20,),
                               Container(
                                 width: 155,
                                 child: ElevatedButton(
                                     onPressed: null,
                                     child: Text(
                                       "Explore...",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold
                                       ),
                                     ),
                                     style: ButtonStyle(
                                         backgroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.6))
                                     )
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
                             color: Color.fromARGB(112, 115, 157, 137).withOpacity(0.2),
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(
                                 "Parcel Sending",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.grey,
                                     fontSize: 30
                                 ),
                               ),
                               Container(
                                   width: 80,
                                   height: 80,
                                   decoration: BoxDecoration(
                                       color: Colors.green.withOpacity(0.2),
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [
                                         BoxShadow(
                                             blurRadius: 7,
                                             spreadRadius: 5,
                                             offset: Offset(5,10),
                                             color: Colors.grey.withOpacity(0.3)
                                         )
                                       ]
                                   ),
                                   child: Icon(Icons.local_activity,size: 50,)),
                               SizedBox(height: 20,),
                               Container(
                                 width: 155,
                                 child: ElevatedButton(
                                     onPressed: null,
                                     child: Text(
                                       "Explore...",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold
                                       ),
                                     ),
                                     style: ButtonStyle(
                                         backgroundColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.6))
                                     )
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             const SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
               child: Container(
                 width: double.infinity,
                 height: 230,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   gradient: LinearGradient(
                     colors: [
                       Colors.blue.withOpacity(0.3),
                       Colors.purple.withOpacity(0.5)
                     ],
                     begin: Alignment.bottomLeft,
                     end: Alignment.topRight
                   )
                 ),
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