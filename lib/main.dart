import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_machine/pages/home_page.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, 
      DeviceOrientation.portraitDown
    ]);
    return new DynamicTheme(
      data: (brightness) => new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          title: 'Calculadora de Juros',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: HomePage(),
       );
      }
    );
  }
}