import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoloTravel extends StatefulWidget {
  const SoloTravel({super.key});

  @override
  State<SoloTravel> createState() => _SoloTravelState();
}

class _SoloTravelState extends State<SoloTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Solo Booking",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios,color: Colors.white),
          onPressed: ()=>{
            Navigator.of(context).pop()
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 35,right: 35),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:Image.asset('assets/images/matatu.jpg',height: 100,),
                
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_pin),
                  contentPadding: EdgeInsets.all(15),
                  labelText: "Enter pick up location",
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  )
                ),
        
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.flag),
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Enter your destination",
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
        
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.event),
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Enter date of travel",
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
        
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock),
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Enter time of travel",
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
        
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.money),
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Enter amount",
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
        
              ),
              SizedBox(height: 20,),
              Container(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>{
                    Navigator.of(context).pop()
                  },
                  child: Text('Book now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
