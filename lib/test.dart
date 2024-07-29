import 'package:efoody/app/app.dart';
import 'package:flutter/cupertino.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  void updateAppState(){
    MyApp.instance.appState=0;
  }
  void getAppState(){
    print(MyApp.instance.appState);
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
