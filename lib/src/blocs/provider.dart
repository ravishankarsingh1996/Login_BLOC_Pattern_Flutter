import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{

  final bloc = Bloc();
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Bloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}