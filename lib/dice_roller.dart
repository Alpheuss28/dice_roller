import "package:flutter/material.dart";
import "dart:math";

class DiceRoller extends StatefulWidget {
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;

  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-$currentDiceRoll.png",
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );
  }
}


// We dont add a build method, because we have StatefulWidget, we must instead add a method "creteState() {}, but still add constructor function "
// You will always work with 2 classes when using StatefulWidget
// if we start a class with "_" then it will be private

