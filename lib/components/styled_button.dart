import 'package:flutter/material.dart';
import 'package:geometry/constants.dart';

class StyledButton extends StatelessWidget {
  StyledButton({@required this.buttonChild, @required this.onPressed, this.height});
  final Widget buttonChild;
  final Function onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(child: buttonChild),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: kStyledButtonColor,
        ),
      ),
    );
  }
}
