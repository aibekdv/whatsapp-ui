import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0F0ED),
  100: Color(0xFFB3D9D2),
  200: Color(0xFF80C0B4),
  300: Color(0xFF4DA696),
  400: Color(0xFF269380),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF007861),
  700: Color(0xFF006D56),
  800: Color(0xFF00634C),
  900: Color(0xFF00503B),
});

const int _primaryPrimaryValue = 0xFF008069;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF83FFD6),
  200: Color(_primaryAccentValue),
  400: Color(0xFF1DFFB5),
  700: Color(0xFF03FFAC),
});

const int _primaryAccentValue = 0xFF50FFC6;
