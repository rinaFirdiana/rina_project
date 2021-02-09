import 'package:flutter/material.dart';
import 'Image.dart';
import 'text_section.dart';
import '../../models/Recipes.dart';
import '../../style.dart';

class RecipeDetails extends StatelessWidget {
  final int _recipeID;
  RecipeDetails(this._recipeID);

  @override
  Widget build(BuildContext context) {
    final recipe = Recipe.fetchByID(_recipeID);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: Text(
          recipe.name,
          style: AppBarTextStyle,
        ),
        backgroundColor: Colors.cyan[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Method from text_section.dart
            ImageBanner(recipe.imagepath),
          ]..addAll(textSections(
              recipe,
            )),
        ),
      ),
    );
  }

  List<Widget> textSections(Recipe recipe) {
    return recipe.detail
        .map((fact) => TextSection(fact.recipe, fact.instructions))
        .toList();
  }
}
