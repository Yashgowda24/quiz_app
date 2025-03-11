import 'package:flutter/material.dart';
import 'package:quiz_app/ques.dart';

class QuizBrain {
  int _quesNum = 0;

  final List<Question> _quesbank = [
    Question(
        quesText: 'Some cats are actually allergic to humans', quesAns: true),
    Question(
        quesText: 'You can lead a cow down stairs but not up stairs.',
        quesAns: false),
    Question(
        quesText: 'Approximately one quarter of human bones are in the feet.',
        quesAns: true),
    Question(quesText: 'A slug\'s blood is green.', quesAns: true),
    Question(
        quesText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        quesAns: true),
    Question(
        quesText: 'It is illegal to pee in the Ocean in Portugal.',
        quesAns: true),
    Question(
        quesText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        quesAns: false),
    Question(
        quesText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        quesAns: true),
    Question(
        quesText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        quesAns: false),
    Question(
        quesText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        quesAns: true),
    Question(
        quesText: 'Google was originally called \"Backrub\".', quesAns: true),
    Question(
        quesText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        quesAns: true),
    Question(
        quesText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        quesAns: true),
  ];

  void nextQues() {
    if (_quesNum < _quesbank.length - 1) {
      _quesNum++;
    } else {
      SnackBar(
        content: Text('End'),
      );
    }
  }

  String getQues() {
    return _quesbank[_quesNum].quesText;
  }

  bool getAns() {
    return _quesbank[_quesNum].quesAns;
  }
}
