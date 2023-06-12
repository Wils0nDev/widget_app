
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF064F98);
const List<Color> _colorsTheme = [
  _customColor,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink

];

//AppTheme : es una clase para configurar el tema y color de mi aplicación.
class AppTheme{
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  :assert(selectedColor >= 0, 'Selected color must be greater then 0'),
  assert(selectedColor <_colorsTheme.length,
  'Select color must be lesss or equal than ${_colorsTheme.length - 1}');

  ThemeData getTheme () => ThemeData(
    useMaterial3 : true,
    colorSchemeSeed: _colorsTheme[selectedColor],
    //appBarTheme le dice a la aplicación que solo 
    //los titulos del appbar los centre
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );
}