import 'package:flutter/material.dart';
import 'screens/Login/Login.dart';
import 'screens/register/register.dart';
import 'screens/Recipes/Recipe.dart';
import 'screens/RecipeDetail/RecipeDetail.dart';
import 'style.dart';

const LoginRoute = '/';
const HomepageRoute = '/homepage';
const RegisterRoute = '/register';
const RecipeRoute = '/Recipe';
const RecipeDetailRoute = '/RecipeDetail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case RegisterRoute:
          screen = Register();
          break;
        case LoginRoute:
          screen = Login();
          break;
        case RecipeRoute:
          screen = Recipes();
          break;
        case RecipeDetailRoute:
          screen = RecipeDetails(arguments['id']);
          break;

        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme:
          AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
      textTheme: TextTheme(
        headline6: TitleTextStyle,
        bodyText2: Body1TextStyle,
      ),
    );
  }
}
