import 'package:coffee_delivery/shared/model/coffee.dart';

class HomeController {
  String inputCoffee = "";
  String tagCategoryActive = "";
  var coffees = <Coffee>[];
  List<Coffee> coffeeFiltered = <Coffee>[];

  void setActiveTagCategory(String category) {
    if(tagCategoryActive == category) {
      tagCategoryActive = "";
      coffeeFiltered = coffees;
      inputCoffee= "";
    } else {
      tagCategoryActive = category;
      coffeeFiltered = coffees.where((coffee) => coffee.categoryCoffee == category).toList();
      inputCoffee= "";
    }
  }

  void searchCoffeeForTitle(String nameCoffee) {
    if(nameCoffee.length > 3) {
      tagCategoryActive = "";
      coffeeFiltered = coffees.where((coffee) {
        return coffee.titleCoffee.toLowerCase().contains(nameCoffee.toLowerCase());
      }).toList();
    } else if(nameCoffee.isEmpty) {
      inputCoffee= "";
      tagCategoryActive = "";
      coffeeFiltered = coffees;
    } else {
      tagCategoryActive = "";
      coffeeFiltered = coffees;
    }
  }
}