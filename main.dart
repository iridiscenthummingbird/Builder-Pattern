void main() {
  PizzaMaker master = PizzaMaker();
  master.addCheese(true);
  master.addChiken(true);
  master.addOlives(true);
  master.addPineapple(true);
  Pizza myPizza = master.makePizza();

  PizzaMaker anotherMaster = PizzaMaker();
  Manager manager = Manager(anotherMaster);
  myPizza = manager.makeBigPepperoniPizza();
}

class Pizza {
  int size = 30;
  bool cheese = false;
  bool pepperoni = false;
  bool chiken = false;
  bool olives = false;
  bool pineapple = false;
}

class PizzaMaker {
  //PizzaBuilder

  Pizza _pizza = Pizza();

  updateSize(int size) {
    _pizza.size = size;
  }

  addCheese(bool cheese) {
    _pizza.cheese = cheese;
  }

  addPepperoni(bool pepperoni) {
    _pizza.pepperoni = pepperoni;
  }

  addChiken(bool chiken) {
    _pizza.chiken = chiken;
  }

  addOlives(bool olives) {
    _pizza.olives = olives;
  }

  addPineapple(bool pineapple) {
    _pizza.pineapple = pineapple;
  }

  Pizza makePizza() {
    return _pizza;
  }
}

class Manager {
  //Director
  PizzaMaker _maker = PizzaMaker();
  Manager(PizzaMaker maker) {
    _maker = maker;
  }

  Pizza makeBigPepperoniPizza() {
    _maker.updateSize(40);
    _maker.addCheese(true);
    _maker.addChiken(true);
    _maker.addOlives(true);
    _maker.addPineapple(true);
    return _maker.makePizza();
  }

  Pizza makeHawaiianPizza() {
    _maker.addCheese(true);
    _maker.addChiken(true);
    _maker.addOlives(true);
    _maker.addPineapple(true);
    return _maker.makePizza();
  }
}
