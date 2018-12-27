import 'dart:async';

class Bloc {
  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  Function(String) get changeEmail => emailController.sink.add;
 }