import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 32;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // back4FC (466:260)
        width: double.infinity,
        height: 32*fem,
        child: Image.asset(
          'assets/page-1/images/back.png',
          width: 32*fem,
          height: 32*fem,
        ),
      ),
          );
  }
}