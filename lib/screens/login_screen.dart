import 'package:flutter/material.dart';
import 'package:powermass/screens/admin_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("LOGIN",style: TextStyle(
            color: Colors.blue,
            fontSize: 30,fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text("Email"),

                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminScreen()));
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
