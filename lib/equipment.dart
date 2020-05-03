import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_inventory_card.dart';

class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {

  Color inventoryCardColor = kInactiveInventoryCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What\'s the fit for today?'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 3.0,
          ),
          Text(
            '4/90',
            style: kNumberTextStyle,
          ),
          SizedBox(
            height: 3.0,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget> [
                    ReusableInventoryCard(
                      onTap: () {
                        setState(() {
                          inventoryCardColor = kActiveInventoryCard;
                          Navigator.pop(context);
                          inventoryCardColor = kInactiveInventoryCard;
                        });
                      },
                      color: inventoryCardColor;
                      image:
                    ),
                    ReusableInventoryCard(),
                    ReusableInventoryCard(),
                    ReusableInventoryCard(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

