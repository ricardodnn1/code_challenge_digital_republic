import 'package:flutter/widgets.dart';

class CalculateController extends ChangeNotifier {
  PageController pageController = PageController();
  TextEditingController heightWallA = TextEditingController();
  TextEditingController lenghtWallA = TextEditingController();
  TextEditingController heightWallB = TextEditingController();
  TextEditingController lenghtWallB = TextEditingController();
  TextEditingController heightWallC = TextEditingController();
  TextEditingController lenghtWallC = TextEditingController();
  TextEditingController heightWallD = TextEditingController();
  TextEditingController lenghtWallD = TextEditingController();

  bool checkWindowA = false;
  bool checkWindowB = false;
  bool checkWindowC = false;
  bool checkWindowD = false;
  bool checkDoorA = false;
  bool checkDoorB = false;
  bool checkDoorC = false;
  bool checkDoorD = false;

  String result = "";

  double minWallArea = 1;
  double maxWallArea = 50;
  double wallAreaA = 0;
  double wallAreaB = 0;
  double wallAreaC = 0;
  double wallAreaD = 0;
  double doorArea = (0.80 * 1.90);
  double windowArea = (2.00 * 1.20);

  List<double> paintSizes = [0.5, 2.5, 3.6, 18];
  int selectedPaintSize = -1;

  goToPage(int page) {
    pageController.jumpToPage(page);
    notifyListeners();
  }

  changeWidowA() {
    checkWindowA = !checkWindowA;
    notifyListeners();
  }

  changeWidowB() {
    checkWindowB = !checkWindowB;
    notifyListeners();
  }

  changeWidowC() {
    checkWindowC = !checkWindowC;
    notifyListeners();
  }

  changeWidowD() {
    checkWindowD = !checkWindowD;
    notifyListeners();
  }

  changeDoorA() {
    checkDoorA = !checkDoorA;
    notifyListeners();
  }

  changeDoorB() {
    checkDoorB = !checkDoorB;
    notifyListeners();
  }

  changeDoorC() {
    checkDoorC = !checkDoorC;
    notifyListeners();
  }

  changeDoorD() {
    checkDoorD = !checkDoorD;
    notifyListeners();
  }

  calculate() async {
    wallAreaA = double.parse(heightWallA.text) * double.parse(lenghtWallA.text);
    wallAreaB = double.parse(heightWallB.text) * double.parse(lenghtWallB.text);
    wallAreaC = double.parse(heightWallC.text) * double.parse(lenghtWallC.text);
    wallAreaD = double.parse(heightWallD.text) * double.parse(lenghtWallD.text);
    double totalDoorWindowArea = doorArea + windowArea;

    if (wallAreaA < minWallArea || wallAreaB < minWallArea || wallAreaC < minWallArea || wallAreaD < minWallArea) {
      print("A área da parede não pode ser menor que 1 m².");
    } else if (wallAreaA > maxWallArea || wallAreaB > maxWallArea || wallAreaC > maxWallArea || wallAreaD > maxWallArea) {
      print("A área da parede não pode ser maior que 50 m².");
    } else if(checkDoorA && checkWindowA || checkDoorB && checkWindowB || checkDoorC && checkWindowC || checkDoorD && checkWindowD) { 
      if (totalDoorWindowArea > wallAreaA * 0.5 || totalDoorWindowArea > wallAreaB || totalDoorWindowArea > wallAreaC || totalDoorWindowArea > wallAreaD) { 
        print("A área total das portas e janelas não pode ultrapassar 50% da área da parede.");
      }
    } else if (double.parse(heightWallA.text) - doorArea <= 0.30 || double.parse(heightWallB.text) - doorArea <= 0.30 || double.parse(heightWallC.text) - doorArea <= 0.30 || double.parse(heightWallD.text) - doorArea <= 0.30) {
      print("A altura da parede com a porta deve ser, no mínimo, 30 cm maior que a altura da porta.");
    } else {
      print("Todas as condições foram atendidas.");
      double paintNeeded = 0;
      int i = 0;

      while(i < 4) {
        if(checkDoorA && checkWindowA) {
          paintNeeded += wallAreaA - totalDoorWindowArea;
        } else {
          paintNeeded += wallAreaA;
        } 
        
        if(checkDoorB && checkWindowB) {
          paintNeeded += wallAreaB - totalDoorWindowArea;
        } else {
          paintNeeded += wallAreaB;
        }
        
        if(checkDoorC && checkWindowC) {
          paintNeeded += wallAreaB - totalDoorWindowArea;
        } else {
          paintNeeded += wallAreaB;
        } 
        
        if(checkDoorD && checkWindowD) {
          paintNeeded += wallAreaD - totalDoorWindowArea;
        } else {
          paintNeeded += wallAreaD;
        } 

        i++;
      }

      print(paintNeeded);
      int numberOfCansNeeded = (paintNeeded / 5).floor();

      if (numberOfCansNeeded / 2 <= 0.5) {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[0]).ceil()} lata(s) de tinta de tamanho ${paintSizes[0]} L.";
        print(result);
      } else if (numberOfCansNeeded / 2 <= 2.5) {
        result =
            "Você precisará de ${(numberOfCansNeeded / paintSizes[1]).ceil()} lata(s) de tinta de tamanho ${paintSizes[1]} L.";
        print(result);
      } else if (numberOfCansNeeded / 2 <= 3.6) {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[2]).ceil()} lata(s) de tinta de tamanho ${paintSizes[2]} L.";
        print(result);
      } else {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[3]).ceil()} lata(s) de tinta de tamanho ${paintSizes[3]} L.";
        print(result);
      }

      notifyListeners();
    }
  }
}
