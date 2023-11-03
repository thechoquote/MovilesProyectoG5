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
        // rectangle32kuY (466:204)
        width: double.infinity,
        height: 842*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(60*fem),
            topRight: Radius.circular(60*fem),
          ),
        ),
      ),
          );
  }
}