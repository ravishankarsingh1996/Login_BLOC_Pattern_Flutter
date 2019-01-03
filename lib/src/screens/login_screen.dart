import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
            child: Column(
              children: <Widget>[
                emailField(),
                PasswordField(),
                Container(margin: EdgeInsets.only(top: 25.0),),
                submitButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'you@email.com',
              labelText: 'Email Address',
              errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget PasswordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              errorText: snapshot.error
          ),
        );
      },
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
