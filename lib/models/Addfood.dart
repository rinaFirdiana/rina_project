class AddFood {
  final int id;
  final String name;
  final int calorie;
  AddFood(this.id, this.name, this.calorie);

  static List<AddFood> fetchAll() {
    return [
      AddFood(1, 'Salad', 300),
      AddFood(2, 'Chciken Rice', 600),
      AddFood(3, 'Mango', 50),
      AddFood(4, 'Fries', 350),
    ];
  }

//pass by id
  static AddFood fetchByID(int locationID) {
    //fetch all locations, with id we want, return it immediately
    List<AddFood> food = AddFood.fetchAll();
    for (var i = 0; i < food.length; i++) {
      if (food[i].id == locationID) {
        return food[i];
      }
    }
    return null;
  }
}
