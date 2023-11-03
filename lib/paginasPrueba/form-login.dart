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
        // formloginA1Q (435:2)
        width: double.infinity,
        height: 483*fem,
        child: Center(
          // rectangle31uUn (435:3)
          child: SizedBox(
            width: double.infinity,
            height: 483*fem,
            child: Container(
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(40*fem),
                  topRight: Radius.circular(40*fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x16000000),
                    offset: Offset(0*fem, -4*fem),
                    blurRadius: 25*fem,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
          );
  }
}