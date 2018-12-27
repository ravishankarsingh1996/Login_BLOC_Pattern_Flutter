import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          PasswordField(),
          Container(margin: EdgeInsets.only(top: 25.0),),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@email.com',
            labelText: 'Email Address'
      ),
    );
  }

  Widget PasswordField() {
    return TextField(
      obscureText: true,
     decoration: InputDecoration(
       hintText: 'Password',
       labelText: 'Password'
     ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login',style: TextStyle(color: Colors.white),),
      color: Colors.blue,
      onPressed: (){

      },
    );
  }
}
