
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase=Supabase.instance.client;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final email=TextEditingController();
    final password=TextEditingController();

    Future submitData() async{
      try{
       final authResponse=await supabase.auth.signInWithPassword(password: password.text.trim(),email: email.text.trim());
        if(!mounted) return;
        else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Logged in as ${authResponse.user!.email!}',style: TextStyle(color: Colors.green),)));
          Navigator.of(context).pushNamed('/home');
        }

      }
      on AuthException catch(e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${e.message}',style: TextStyle(color: Colors.red),),behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10), // Margin to adjust the position
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15)));

      }
    }

    return Scaffold(
      appBar: AppBar(
        // title: Text("Login page"),
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        //   onPressed: ()=>{
        //     Navigator.of(context).pop()
        //   },
        // ),
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
                child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
                onPressed: (){
                  submitData();
                },
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
