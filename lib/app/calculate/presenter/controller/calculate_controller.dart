import 'package:flutter/widgets.dart';

class CalculateController extends ChangeNotifier {
  PageController pageController = PageController();
  final formOneKey = GlobalKey<FormState>();
  final formTowKey = GlobalKey<FormState>();
  final formThreeKey = GlobalKey<FormState>();
  final formFourKey = GlobalKey<FormState>();

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
  String error = "";

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

  double totalDoorWindowArea = 0; 
   

  goToPage(int page) {
    validFields();
    pageController.jumpToPage(page);
    notifyListeners();
  }

  validFields() {
    totalDoorWindowArea = windowArea + doorArea;
    if(heightWallA.text.isNotEmpty && lenghtWallA.text.isNotEmpty) {
      wallAreaA = double.parse(heightWallA.text) * double.parse(lenghtWallA.text);
    } else if(heightWallB.text.isNotEmpty && lenghtWallB.text.isNotEmpty) {
      wallAreaB = double.parse(heightWallB.text) * double.parse(lenghtWallB.text);
    } else if(heightWallC.text.isNotEmpty && lenghtWallC.text.isNotEmpty) {
      wallAreaC = double.parse(heightWallC.text) * double.parse(lenghtWallC.text);
    } else if(heightWallD.text.isNotEmpty && lenghtWallD.text.isNotEmpty) {
      wallAreaD = double.parse(heightWallD.text) * double.parse(lenghtWallD.text);
    }

    if (wallAreaA < minWallArea || wallAreaB < minWallArea || wallAreaC < minWallArea || wallAreaD < minWallArea) {
      error = "A área da parede não pode ser menor que 1 m².";
    } else if (wallAreaA > maxWallArea || wallAreaB > maxWallArea || wallAreaC > maxWallArea || wallAreaD > maxWallArea) {
      error = "A área da parede não pode ser maior que 50 m².";
    } else if(checkDoorA == true && checkWindowA == true || checkDoorB == true && checkWindowB == true || checkDoorC == true && checkWindowC == true || checkDoorD == true && checkWindowD == true) { 
      if (totalDoorWindowArea > wallAreaA * 0.5 || totalDoorWindowArea > wallAreaB || totalDoorWindowArea > wallAreaC || totalDoorWindowArea  > wallAreaD) { 
        error = "A área total das portas e janelas não pode ultrapassar 50% da área da parede.";
      }
    } else if (double.parse(heightWallA.text) - doorArea <= 0.30 || double.parse(heightWallB.text) - doorArea <= 0.30 || double.parse(heightWallC.text) - doorArea <= 0.30 || double.parse(heightWallD.text) - doorArea <= 0.30) {
      error = "A altura da parede com a porta deve ser, no mínimo, 30 cm maior que a altura da porta.";
    }
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
      
      double paintNeeded = 0;
      int i = 0;

       
      if(checkDoorA == true && checkWindowA == true) {
        paintNeeded += wallAreaA - totalDoorWindowArea;
      } else {
        paintNeeded += wallAreaA;
      } 
      
      if(checkDoorB == true && checkWindowB == true) {
        paintNeeded += wallAreaB - totalDoorWindowArea;
      } else {
        paintNeeded += wallAreaB;
      }
      
      if(checkDoorC == true && checkWindowC == true) {
        paintNeeded += wallAreaB - totalDoorWindowArea;
      } else {
        paintNeeded += wallAreaB;
      } 
      
      if(checkDoorD == true && checkWindowD == true) {
        paintNeeded += wallAreaD - totalDoorWindowArea;
      } else {
        paintNeeded += wallAreaD;
      } 

      
      int numberOfCansNeeded = (paintNeeded / 5).floor();

      if (numberOfCansNeeded / 2 <= 0.5) {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[0]).ceil()} lata(s) de tinta de tamanho ${paintSizes[0]} L.";
         
      } else if (numberOfCansNeeded / 2 <= 2.5) {
        result =
            "Você precisará de ${(numberOfCansNeeded / paintSizes[1]).ceil()} lata(s) de tinta de tamanho ${paintSizes[1]} L.";
        
      } else if (numberOfCansNeeded / 2 <= 3.6) {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[2]).ceil()} lata(s) de tinta de tamanho ${paintSizes[2]} L.";
         
      } else {
        result = "Você precisará de ${(numberOfCansNeeded / paintSizes[3]).ceil()} lata(s) de tinta de tamanho ${paintSizes[3]} L.";
         
      }

      notifyListeners();
    }
} 