import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // barshomeindicatoriphonelightpo (466:265)
        padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
        width: double.infinity,
        height: 34*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Center(
          // homeindicatorZ5U (466:267)
          child: SizedBox(
            width: double.infinity,
            height: 5*fem,
            child: Container(
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(100*fem),
                color: Color(0xff181818),
              ),
            ),
          ),
        ),
      ),
          );
  }
}