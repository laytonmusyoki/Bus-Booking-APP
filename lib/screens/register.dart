import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase=Supabase.instance.client;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final username=TextEditingController();
    final phone=TextEditingController();
    final email=TextEditingController();
    final password=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // title: Text("Login page"),
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: ()=>{
            Navigator.of(context).pop(),
          },
        ),
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
              controller: username,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  hintText: "Enter username",
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
              controller: phone,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  hintText: "Enter phone",
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
              controller: email,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  hintText: "Enter email",
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
              controller: password,
              obscureText: true,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20
              ),
              decoration: InputDecoration(
                  hintText: "Enter password",
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
                child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.white),),
                onPressed: () async{
                  try{
                    final authResponse=await supabase.auth.signUp(email:email.text.trim(),password: password.text.trim(),data: {'username':username.text.trim(),'phone':phone.text.trim()});
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logged as ${authResponse.user!.email!}')));
                    // if(! mounted) return;
                    Navigator.of(context).pushNamed('/home');
                  }
                  on AuthException catch(e){
                    print(e);
                  }
                },
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
                onTap: ()=>{
                  Navigator.of(context).pushNamed('/')
                },
                child:RichText(
                  text: TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: " Login",
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
