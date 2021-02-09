import 'Recipes_detail.dart';

class Recipe {
  final int id;
  final String name;
  final String imagepath;
  final String description;
  final int calorie;
  final List<RecipeDetail> detail;

  Recipe(this.id, this.name, this.description, this.calorie, this.imagepath,
      this.detail);

  static List<Recipe> fetchAll() {
    return [
      Recipe(1, 'Salad', 'a common healthy dish but will help in your diet',
          300, 'assets/images/salad.png', [
        RecipeDetail(
          'Ingredients',
          'red cabbage \nCharred peppers \nGreen onions \nSeeds or nuts' +
              '\n6 to 7 cups shredded red and/or green cabbage' +
              '\n Mix of peppers.' +
              '\n2 scallions, chopped' +
              '\n½ cup chopped cilantro, including stems',
        ),
        RecipeDetail(
            'Instructions',
            'Make the dressing: In a small bowl, whisk together the cashew butter,' +
                ' miso paste, lime juice, sesame oil, and ginger. Whisk in enough ' +
                'water to create a drizzable consistency. Set aside.' +
                '\n \n In a large bowl, combine the cabbage, peppers, scallions,' +
                ' cilantro, basil, chiles, and ¾ of the dressing. Toss until combined.'),
      ]),
      Recipe(
          2,
          'Herbed Chicken Marsala',
          'Smothered in low-calorie sauteed mushrooms and sundried tomatoes',
          565,
          'assets/images/chicken.jpeg', [
        RecipeDetail(
          'Ingredients',
          'Four 4-ounce boneless, skinless chicken breast cutlets' +
              '\n 1 1/2 tablespoons extra-virgin olive oil ' +
              '\n 2 teaspoons unsalted butter' +
              '\n 3/4 cup low-sodium chicken broth ' +
              '\n 1/2 teaspoon finely chopped rosemary' +
              '\n 1/3 cup sweet marsala wine ',
        ),
        RecipeDetail(
          'Instructions',
          'Place the chicken cutlets between 2 pieces of plastic wrap and pound with a meat mallet until about 1/3-inch thick. ' +
              '\nSprinkle with 1/4 teaspoon salt and 1/4 teaspoon pepper.' +
              '\n\nPut the flour on a medium plate. Heat the oil in a large nonstick skillet over medium-high heat. Dredge the ' +
              'chicken in the flour to fully coat, shaking off any excess. Add the chicken to the skillet and fry until fully' +
              ' cooked and golden brown, about 4 minutes per side. Transfer to a platter and tent with foil to keep warm.',
        ),
      ]),
      Recipe(
          3,
          'Lemon Yogurt Cake',
          'protein-rich Greek yogurt take the place of butter in this lemony pound cake',
          513,
          'assets/images/lemon.jpeg', [
        RecipeDetail(
            'Ingredients',
            '1 1/2 cups white whole wheat flour' +
                '\n2 teaspoons baking powder' +
                '\n1/4 teaspoon fine salt' +
                '\n3/4 cup sugar' +
                '\nFinely grated zest of 1 lemon' +
                '\n2 large egg whites'),
        RecipeDetail(
            'Instructions',
            'Coat an 8 1/2- by 4 1/2-inch loaf pan with baking spray ' +
                'Whisk together the flour, baking powder and salt in a medium bowl' +
                'Put the sugar and lemon zest in another bowl and rub the lemon zest into the sugar with your fingers. Add the yogurt, milk, olive oil, vanilla, egg whites and whole egg and vigorously whisk until well blended' +
                'Add the flour mixture into the egg mixture and fold until just incorporated' +
                '\n\nTransfer to the prepared pan. Bake until a cake tester inserted in the center comes out clean, about 50 minutes' +
                ' Cool in the pan on a wire rack for 5 minutes, and then unmold and cool to room temperature'),
      ])
    ];
  }

  static Recipe fetchByID(int recipeID) {
    List<Recipe> recipe = Recipe.fetchAll();
    for (var i = 0; i < recipe.length; i++) {
      if (recipe[i].id == recipeID) {
        return recipe[i];
      }
    }
    return null;
  }
}
