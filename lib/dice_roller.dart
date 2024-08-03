import "dart:math";

import "package:flutter/material.dart";

final randomize = Random();

class DiceRoller extends StatefulWidget {
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-1.png';

  void roleDice() {
    setState(() {
        var randomNumber = 1 +  randomize.nextInt(6);
        activeDiceImage = 'assets/images/dice-$randomNumber.png';
      }
    );
  }
 @override
  Widget build (context) {
    return Column(
          // ** Another way to center the content **
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200),
            const SizedBox(height: 16),
            TextButton(
              onPressed: roleDice,
              style: TextButton.styleFrom(
                // ** Add button to padding. you can use 'all' 'only' if you want to add padding for for all or one axis **
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                textStyle:  const TextStyle(fontSize: 20),
                ),
              child: const Text('Roll Dice')),
          ],
        );
  }
}