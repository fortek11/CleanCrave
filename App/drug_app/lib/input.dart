import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Function pressedYes;
  final Function pressedNo;
  Input(this.pressedNo, this.pressedYes);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Column(
              children: [
                Text('Did You Maintained Your Streak Today?'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          pressedYes();
                          
                        },
                        child: Text("Yes")),
                    ElevatedButton(onPressed: () {}, child: Text("No"))
                  ],
                ),
              ],
            )));
  }
}
