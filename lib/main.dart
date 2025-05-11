import 'package:flutter/material.dart';
import 'package:theme_application/screen1.dart';

void main()
{
  runApp(theme());
}
class theme extends StatefulWidget {
  const theme({super.key});

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  ThemeData dark_mode=ThemeData(
    brightness: Brightness.light,
  );
   ThemeData light_mode=ThemeData(
    brightness: Brightness.dark,
  );
  bool is_dark=false;
  void toggle(){
    setState(() {
      is_dark=!is_dark;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: is_dark==true?dark_mode:light_mode,
      home: Screen1(func: toggle,is_dark:is_dark,),
    );
  }
}