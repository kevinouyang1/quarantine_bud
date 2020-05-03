import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quarantine_buddy/interface_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getCameraPicture();
  }
  void getCameraPicture(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => InterfaceScreen()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(
        FontAwesomeIcons.deviantart,
        size: 100.0,
      )
    );
  }
}
