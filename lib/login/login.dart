import 'package:flutter/material.dart';
import 'package:whatsapppro/login/sign_up.dart';
import 'package:whatsapppro/screens/first_Page.dart';

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
        backgroundColor: Colors.black45,
        title: Text("Login",style: TextStyle(color: Colors.green),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Login",style: TextStyle(fontSize: 24),),
              TextField(decoration: InputDecoration(
                labelText: "Phone number",
                hintText: "Phone number",
                prefix: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                )
              ),
              ),SizedBox(
                height: 20,
              ),
              TextField(decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
                prefix: Icon(Icons.password),
                suffix: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstPage(),),);
              }, child: Text("Login")),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),),);
              }, child: Text("Sign up")),
            ],
          ),
        ),
      ),
    );
  }
}
