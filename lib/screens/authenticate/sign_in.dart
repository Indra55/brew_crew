import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key,required this.toggleView});
  final Function toggleView;

  @override
  State<SignIn> createState() => _SignInState();
}



class _SignInState extends State<SignIn> {
  
final AuthService _auth =AuthService();
String email = '';
String pass = ''; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label:Text('Register'),
            onPressed: (){
               widget.toggleView();  
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0 ,horizontal: 50.0),
        child:  Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                   setState(() => pass = val);
                },
              ),

              SizedBox(height: 20.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[400],  
                ),
                onPressed: () async {
                    print(email);
                    print(pass);
                },
                child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),  
                ),
              )

            ]
          )
      ),
      )
    );
  }
}