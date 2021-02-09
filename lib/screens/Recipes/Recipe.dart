import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/Recipes.dart';
import '../../screens/RecipeDetail/Image.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recipes = Recipe.fetchAll();

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 200,
            child: ImageBanner("assets/images/recipeBanner.png"),
            color: Colors.cyan[100],
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) =>
                    _itemBuilder(context, recipes[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(
      context,
      RecipeDetailRoute,
      arguments: {"id": locationID},
    );
  }

  Widget _itemBuilder(BuildContext context, Recipe recipe) {
    int calorie = recipe.calorie;
    String calories = "$calorie";
    return GestureDetector(
      onTap: () => _onLocationTap(context, recipe.id),
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.cyan[100],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(recipe.imagepath),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Text(
                      recipe.name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      recipe.description,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "calories: " + calories,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
