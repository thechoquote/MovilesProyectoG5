import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 92;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // herologo8ZY (435:22)
        width: double.infinity,
        height: 24*fem,
        child: Center(
          child: Text(
            'SPI-FISI\n',
            style: SafeGoogleFont (
              'Libre Franklin',
              fontSize: 24*ffem,
              fontWeight: FontWeight.w400,
              height: 1*ffem/fem,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
          );
  }
}