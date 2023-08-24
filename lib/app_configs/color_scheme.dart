import 'package:flutter/material.dart';

const ColorScheme colorScheme = ColorScheme(
  // The background color for major parts of the app (toolbars, tab bars, etc)
  primary: Color(0xFFF7F7F7),
  onPrimary: Color(0xFFF7F7F7),
  inversePrimary: Color(0xFF606060),
  secondary: Color(0xFFC0EBFF),
// The foreground color for widgets (text/icon) on top of the secondary color
  onSecondary: Colors.black,
// The surface color for widgets like BottomAppBar
  surface: Colors.white,
// The foreground color for widgets (text/icon) on top of the surface color
  onSurface: Colors.black,
// The default background color of the app
  background: Colors.white,
// The foreground color for widgets (text/icon) on top of the background color
  onBackground: Color(0xFFF1FAFF),
  onSurfaceVariant: Color(0xFFF5F5F5),
// The error color used to indicate errors in the app
  error: Color(0xFFB00020),
// The foreground color for widgets (text/icon) on top of the error color
  onError: Colors.white,
// The brightness of the color scheme
  brightness: Brightness.light,
);
