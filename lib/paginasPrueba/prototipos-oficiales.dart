import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 2606;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // prototiposoficialesfcN (408:2)
        width: double.infinity,
        height: 298*fem,
        child: Text(
          'Prototipos oficiales',
          textAlign: TextAlign.center,
          style: SafeGoogleFont (
            'Inter',
            fontSize: 288*ffem,
            fontWeight: FontWeight.w400,
            height: 1.0347222222*ffem/fem,
            color: Color(0xff000000),
          ),
        ),
      ),
          );
  }
}