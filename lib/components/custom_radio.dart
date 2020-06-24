import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  RadioButton(
      {Key key, @required this.color, this.isSelected: false, @required this.index, this.onSelected})
      : super(key: key);

  final Color color;
  final bool isSelected;
  final int index;
  final ValueChanged<int> onSelected;

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  void _handleRadioSelection() {
    widget.onSelected(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleRadioSelection,
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: widget.isSelected
                ? Border.all(width: 5.0, color: widget.color)
                : null,
            color: Colors.transparent),
        child: Center(
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: widget.color,
            ),
          ),
        ),
      ),
    );
  }
}
