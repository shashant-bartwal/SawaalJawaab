import 'package:flutter/material.dart';
import 'package:my_app/View/signup.dart';
import 'package:my_app/widget/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formkey = GlobalKey<FormState>();
  late String email, password;

  @override
  Widget build(BuildContext context) {
 
        return Scaffold(
          appBar: AppBar(title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
          ),
          body: Form(
            key: _formkey,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column (
                children: [
                  Spacer(),
                  TextFormField(
                    validator: (val){
                        // ignore: unnecessary_statements
                      return  val!.isEmpty ? "Enter EmailID" : null;
                    },
                    decoration: InputDecoration(hintText: "Email"),
                    onChanged: (val){
                      email = val;
                    },
                  ),
                  SizedBox(height: 6,),
                  TextFormField(
                    validator: (val){
                        // ignore: unnecessary_statements
                      return  val!.isEmpty ? "Enter Password" : null;
                    },
                    decoration: InputDecoration(hintText: "Password"),
                    onChanged: (val){
                      password = val;
                    },
                  ),
                  SizedBox(height: 24,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30)),
                    width: MediaQuery.of(context).size.width - 48,
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w700),
                        
                        ),
                  ),
                  SizedBox(height: 24,),
                  Row(children: [
                    Text("Don't have an account? ",style: TextStyle(fontSize: 15.5),),
                    GestureDetector(child: Text("Sign Up",style: TextStyle(fontSize: 15.5, decoration: TextDecoration.underline),),onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },),
                  ],mainAxisAlignment: MainAxisAlignment.center,),
                  SizedBox(height: 80,),
                ],),
            ),
          ),
    );
  
  }
}