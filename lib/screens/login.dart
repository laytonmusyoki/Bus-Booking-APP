import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Login page"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: ()=>{
            Navigator.of(context).pop()
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/img.jpg',height: 130,),
            SizedBox(height: 20,),
            TextField(
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20
              ),
              decoration: InputDecoration(
                hintText: "Username",
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding: EdgeInsets.all(15),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)
                  )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white,width: 2),


              ),
              child: TextButton(
                child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
                onPressed: ()=>{},
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: ()=>{
                Navigator.of(context).pushNamed('/register')
              },
              child:RichText(
                text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: " Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
