import 'package:flutter/material.dart';
import 'package:geometry/constants.dart';

class StyledButton extends StatelessWidget {
  StyledButton(
      {@required this.buttonChild, @required this.onPressed, this.height});
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

class StyleButton extends StatelessWidget {
  StyleButton({@required this.onPressed, @required this.buttonChild});

  final Function onPressed;
  final Widget buttonChild;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10.0,
      padding: EdgeInsets.all(20.0),
      fillColor: Colors.black87,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: onPressed,
      child: buttonChild,
    );
  }
}
