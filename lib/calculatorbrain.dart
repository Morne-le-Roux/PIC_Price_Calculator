import 'dart:math';

class CalculatorBrain {
  int templateX;
  int templateY;
  double templatePrice;
  int printX;
  int printY;
  double customerPrice;

  CalculatorBrain(
      {required this.templateX,
      required this.templateY,
      required this.templatePrice,
      required this.printX,
      required this.printY,
      required this.customerPrice});

  double calculateTemplatePricePerCM() {
    double cm = templateX.toDouble() * templateY.toDouble();
    double pricepercm = templatePrice / cm;
    print(templateY.toDouble());

    return pricepercm;
  }

  double calculateCustomerPrice() {
    double printSize = printX.toDouble() * printY.toDouble();
    double price = printSize * calculateTemplatePricePerCM();
    print(price);
    return price;
  }
}
