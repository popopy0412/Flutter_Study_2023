import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
const gap = Duration(milliseconds: 200);

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    var count = 0;
    Timer.periodic(gap, (timer) {
      setState(() {
        // 카운트를 증가시킵니다.
        count++;
        currentDiceRoll = randomizer.nextInt(6) + 1;
        if (count >= 6) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('주사위 굴리기'),
        ),
      ],
    );
  }
}
