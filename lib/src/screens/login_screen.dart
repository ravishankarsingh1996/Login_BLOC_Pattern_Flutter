import 'package:flutter/material.dart';

import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  emailField(bloc),
                  PasswordField(bloc),
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                  ),
                  submitButton(bloc)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

/*  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          style: TextStyle(
            color: Colors.black,
            decorationColor: Colors.black,
          ),
          cursorColor: Colors.black,
          onChanged: bloc.changeEmail,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          maxLines: 1,
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              hintText: 'you@email.com',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              labelText: 'Email Address',
              errorText: snapshot.error,
              errorStyle: TextStyle(
                color: Colors.red,
              )),
        );
      },
    );
  }*/

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'you@email.com',
              labelText: 'Email Address',
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget PasswordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          onPressed:
              (snapshot.hasData && !snapshot.hasError) ? bloc.submit : null,
        );
      },
    );
  }
}
