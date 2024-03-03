import 'package:get/get.dart';

import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {


  var userInput = "";
  var userOutput = "";

  equalPressed() {
    String userInputFC = userInput;
    userInputFC = userInputFC.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(userInputFC);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    userOutput = eval.toString();
    update();
  }

  clearInputAndOutput() {
    userInput = "";
    userOutput = "";
    update();
  }

  deleteBtnAction() {
    userInput = userInput.substring(0, userInput.length - 1);
    update();
  }

  onBtnTapped(List<String> buttons, int index) {
    userInput += buttons[index];
    update();
  }
}