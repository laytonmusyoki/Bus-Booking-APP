import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainDrawer extends StatefulWidget {
  const mainDrawer({super.key});

  @override
  State<mainDrawer> createState() => _mainDrawerState();
}

class _mainDrawerState extends State<mainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30,bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Layton Matheka",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(
                    "laytonmatheka7@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(
              Icons.details,
            ),
            title: Text(
              "Details",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: ()=>{
              Navigator.of(context).pushNamed('/details')
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(
              Icons.app_registration,
            ),
            title: Text(
              "Register",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: ()=>{
              Navigator.of(context).pushNamed('/register')
            },
          ),
          ListTile(
            leading: Icon(
              Icons.login,
            ),
            title: Text(
              "Login",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: ()=>{
              Navigator.of(context).pushNamed('/login')
            },
          )
        ],
      )
    );
  }
}
