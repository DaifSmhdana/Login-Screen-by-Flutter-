import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class lodinScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(),
      // BODY
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordConroller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: 60.0,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordConroller.text);
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Text("Don't Have an Account ?"),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        "Register Now"
                      ),
                    )
          
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}