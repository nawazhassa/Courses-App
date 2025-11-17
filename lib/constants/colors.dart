import 'package:flutter/material.dart';

const Color primary = Color(0xFF1847BC);
const Color primaryDark = Color(0xFF00264D);
const Color secondary = Color(0xFFFFE4C2);
const Color scaffoldBg = Colors.white;
const Color grey = Colors.grey;
const Color green = Colors.green;



// Gradient example
const LinearGradient primaryGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [secondary, scaffoldBg],
);
