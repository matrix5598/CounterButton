import 'package:flutter/material.dart';

class CountNumberButton extends StatefulWidget {
  final double width;
  final double height;
  late int initValue;
  final int minValue;
  final int maxValue;
  final Color iconColor;
  final Color buttonColor;
  final Color textColor;
  final double iconSize;
  final Icon icon_left;
  final Icon icon_right;
  final ValueChanged onChanged;
  CountNumberButton({
    Key? key,
    required this.width,
    required this.height,
    required this.initValue,
    required this.minValue,
    required this.maxValue,
    required this.iconColor,
    required this.buttonColor,
    required this.textColor,
    required this.iconSize,
    required this.icon_left,
    required this.icon_right,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CountNumberButton> createState() => _CountNumberButtonState();
}

class _CountNumberButtonState extends State<CountNumberButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        child: Center(
            child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              width: widget.width / 3.1,
              height: widget.height * 0.95,
              decoration: BoxDecoration(
                  color: widget.buttonColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0))),
              child: IconButton(
                  onPressed: () {
                    if (widget.initValue <= widget.minValue) {
                      setState(() {
                        widget.initValue = widget.minValue;
                      });
                    } else {
                      setState(() {
                        widget.initValue -= 1;
                      });
                      widget.onChanged(widget.initValue);
                    }
                  },
                  icon: widget.icon_left,
                  iconSize: widget.iconSize,
                  color: widget.iconColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3),
            child: Container(
                width: widget.width / 4,
                height: widget.height * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    '${widget.initValue}',
                    style: TextStyle(
                      fontSize: 16,
                      color: widget.textColor,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              width: widget.width / 3.1,
              height: widget.height * 0.95,
              decoration: BoxDecoration(
                  color: widget.buttonColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              child: IconButton(
                  onPressed: () {
                    if (widget.initValue >= widget.maxValue) {
                      setState(() {
                        widget.initValue = widget.maxValue;
                      });
                    } else {
                      setState(() {
                        widget.initValue += 1;
                        widget.onChanged(widget.initValue);
                      });
                    }
                  },
                  icon: widget.icon_right,
                  iconSize: widget.iconSize,
                  color: Colors.white),
            ),
          ),
        ])));
  }
}
