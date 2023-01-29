import 'package:flutter/widgets.dart';

class CalculateController extends ChangeNotifier {

  PageController pageController = PageController();

  goToPage(int page) {
    pageController.jumpToPage(page);
    notifyListeners();
  }

  calculate() async {
    
  }

}