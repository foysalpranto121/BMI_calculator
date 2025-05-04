import 'package:flutter/material.dart';

import 'Color.dart';

var LightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    background: LBgColor,
    primary: LPrimaryColor,
    onBackground: LFontColor,
    primaryContainer: LDivColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor,



  ),



);
var DarkTheme = ThemeData(

  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    background: DBgColor,
    primary: DPrimaryColor,
    onBackground: DFontColor,
    primaryContainer: DDivColor,
    onPrimaryContainer: DFontColor,
    onSecondaryContainer: DLableColor,




  ),
);