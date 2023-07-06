import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardchild;
  final void Function() onPress;
  ReusableCard({required this.colour,required this.cardchild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,

        ),
      ),
    );
  }
}
