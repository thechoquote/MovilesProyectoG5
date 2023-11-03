import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabajomovilesg5/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 319;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // coursetitleFFp (466:256)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // sistemadegestindetiendasoHL (466:257)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
              child: Text(
                'Sistema de Gestión de tiendas',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.7142857143*ffem/fem,
                  color: Color(0xff181818),
                ),
              ),
            ),
            Container(
              // autogroupqer8h7p (WJ7CpkEmd5gJjCqoweqER8)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // sistemaswebe34 (466:258)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 199*fem, 0*fem),
                    child: Text(
                      'Sistemas Web',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff4f4f4f),
                      ),
                    ),
                  ),
                  Text(
                    // ciclo7Yu8 (466:259)
                    'Ciclo 7',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.8333333333*ffem/fem,
                      color: Color(0xff4f4f4f),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}