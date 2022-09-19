

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:countnumberbutton/countnumberbutton.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  int newValue = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: CountNumberButton(
          width: 250,
          height: 60,
          initValue: newValue,
          minValue: 0,
          maxValue: 10,
          iconColor: Colors.white,
          iconSize: 25.0,
          buttonColor: Colors.green,
          textColor: Colors.black,
          icon_left: Icon(Icons.remove),
          icon_right: Icon(Icons.add),
          onChanged: (value) {
            newValue = value;
          },
        )
      )
    );
  }
}

```
