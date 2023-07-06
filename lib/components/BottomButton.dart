import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  late final  void Function() onTap;
  final String buttontitle;
  BottomButton({required this.onTap,required this.buttontitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttontitle,style: kLargeButtonTextStyle,)),
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  // final void Function

  var onPressed;
  RoundIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4C4f5e),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6,
      child: Icon(icon),
    );
  }
}