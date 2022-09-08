import 'dart:ui';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
   bool isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(20.0),
                child: Image.asset('assets/logo.jpeg',fit: BoxFit.fitWidth,),
                  ),
              //Center(child: Text('Login to your account to continue',
                 // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),

              Padding(
                padding: const EdgeInsets.only(left: 10.0 , top: 25.0),
                child: Container(
                  child: Text('Email:' ,
                      style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),

                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 10.0 , top: 1.0 , right:10),
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.mail),
                 ),
               ),
             ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0 , top: 10.0),
                child: Container(
                  child: Text('Password:' ,
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0 , top: 1.0 , right:10),
                child: TextField(
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(Icons.visibility),
                     )

                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                  child: FlatButton(onPressed: () {}, child: Text('Forget your password?', style: TextStyle(fontSize: 15, color: Colors.blueAccent),),
              ),
              ),
              Center(
                  child: SizedBox(
                        height: height * 0.06,
                        width: width-50,
                   child: FlatButton(color: Colors.indigoAccent, onPressed: () {},
                       child: Text('LOGIN', style: TextStyle(fontSize: 26, color: Colors.white))),

              ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40.0 , top: 15.0 , right:40),
                child: SizedBox(
                  height: height * 0.06,
                  width: width-300,
                  child: RaisedButton.icon(onPressed: () {}, icon: Icon(Icons.facebook, color: Colors.blueAccent, size: 40,),
                    label: Text('Login with Facebook', style: TextStyle(fontSize: 20, color: Colors.black),),
                    color: Colors.white,
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40.0 , top: 15.0 , right:40),
                child: SizedBox(
                  height: height * 0.06,
                  width: width-300,
                  child: RaisedButton.icon(onPressed: () {}, icon: Icon(Icons.vpn_lock_rounded, color: Colors.red, size: 40,),
                    label: Text('Login with Google', style: TextStyle(fontSize: 20, color: Colors.black),),
                    color: Colors.white,
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 60.0 , top: 1.0 , right:10),
                child: Row(
                  children: [
                    Text("Don't have an account?",style: TextStyle(fontSize: 15, color: Colors.black) ),
                    FlatButton(onPressed: () {},
                        child: Text('Register now',
                          style: TextStyle(fontSize: 15, color: Colors.blueAccent),)
                    ),
                  ],
                ),
              ),

            ],

          ),
        ),

    );
  }

   void _togglePasswordView() {
    if(isHiddenPassword == true){isHiddenPassword = false ;}
    else{ isHiddenPassword = true ;}

    }
}
