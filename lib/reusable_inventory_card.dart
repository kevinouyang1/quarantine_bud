import 'package:flutter/material.dart';


class ReusableInventoryCard extends StatelessWidget {
  ReusableInventoryCard({@required this.onTap, @required this.image, @required this.color});

  final Function onTap;
  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 65.0,
        width: 65.0,
        child: image,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: color,
        ),
      ),
    );;
  }
}
