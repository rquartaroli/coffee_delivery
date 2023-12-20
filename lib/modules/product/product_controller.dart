class ProductControllet {
  int tagActive = 1;
  String quantityML = '114ml';
  int quantityCoffee = 1;
  double priceCoffee = 0.0;
  double priceCoffeeToDisplay = 0.0;

  void setActiveTagNumber(int numberTagActive) {
    tagActive = numberTagActive;
    if(numberTagActive == 1){
      priceCoffeeToDisplay = priceCoffee * quantityCoffee;
      quantityML = '114ml';
    } else if(numberTagActive == 2){
      priceCoffeeToDisplay = ((priceCoffee * 0.2) + priceCoffee) * quantityCoffee;
      quantityML = '140ml';
    } else {
      priceCoffeeToDisplay = ((priceCoffee * 0.9) + priceCoffee) * quantityCoffee;
      quantityML = '227ml';
    }
  }

  void incrementQuantityCoffee() {
    quantityCoffee++;
    if(tagActive == 1){
      priceCoffeeToDisplay = priceCoffee * quantityCoffee;
    } else if(tagActive == 2){
      priceCoffeeToDisplay = ((priceCoffee * 0.2) + priceCoffee) * quantityCoffee;
    } else {
      priceCoffeeToDisplay = ((priceCoffee * 0.9) + priceCoffee) * quantityCoffee;
    }
  }

  void decrementQuantityCoffee() {
    if(quantityCoffee > 1) {
      quantityCoffee--;
      
      if(tagActive == 1){
        priceCoffeeToDisplay = priceCoffee * quantityCoffee;
      } else if(tagActive == 2){
        priceCoffeeToDisplay = ((priceCoffee * 0.2) + priceCoffee) * quantityCoffee;
      } else {
        priceCoffeeToDisplay = ((priceCoffee * 0.9) + priceCoffee) * quantityCoffee;
      }
    }
  }
}