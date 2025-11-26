import 'package:flutter/material.dart';
import 'package:whatsapppro/login/login.dart';
import 'package:whatsapppro/screens/first_Page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Sign up",style: TextStyle(color: Colors.green),),
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
              Text("Sign up",style: TextStyle(fontSize: 24),),
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
              TextField(
                obscureText: isPassword,
                decoration:
                InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  prefix: Icon(Icons.password),
                  suffix: IconButton(onPressed: (){
                    setState(() {
                      isPassword = !isPassword;
                    });
                    print(isPassword);
                  }, icon : isPassword
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: isPassword,
                decoration:
                InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  prefix: Icon(Icons.password),
                  suffix: IconButton(onPressed: (){
                    setState(() {
                      isPassword = !isPassword;
                    });
                    print(isPassword);
                  }, icon : isPassword
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),),);
              }, child: Text("Sign up")),
            ],
          ),
        ),
      ),
    );
  }
}
