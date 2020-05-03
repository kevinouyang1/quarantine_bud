import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quarantine_buddy/equipment.dart';
import 'equipment.dart';
import 'constants.dart';
import 'loading_screen.dart';


enum Selection {
  shop,
  inventory,
  nothing,
}

class InterfaceScreen extends StatefulWidget {
  @override
  _InterfaceScreenState createState() => _InterfaceScreenState();
}

class _InterfaceScreenState extends State<InterfaceScreen> {

  Selection selection = Selection.nothing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/adamspenis.jpg'),
            fit: BoxFit.cover,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Inventory()));
                setState(() {
                  selection = Selection.inventory;
                });
              },
              child: Container(
                color: selection == Selection.inventory ? kActiveContainerColor : kInactiveContainerColor,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.tshirt,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) => *************()));
                setState(() {
                  selection = Selection.shop;
                });
              },
              child: Container(
                color: selection == Selection.shop ? kActiveContainerColor : kInactiveContainerColor,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.shopify,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
