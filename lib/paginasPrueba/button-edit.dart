import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 343;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // buttoneditNg2 (466:205)
        width: double.infinity,
        height: 60*fem,
        decoration: BoxDecoration (
          color: Color(0xff4c6ed7),
          borderRadius: BorderRadius.circular(6*fem),
        ),
        child: Center(
          child: Text(
            'Editar Proyecto',
            textAlign: TextAlign.center,
            style: SafeGoogleFont (
              'Inter',
              fontSize: 18*ffem,
              fontWeight: FontWeight.w400,
              height: 1.5555555556*ffem/fem,
              color: Color(0xfffdfdfd),
            ),
          ),
        ),
      ),
          );
  }
}