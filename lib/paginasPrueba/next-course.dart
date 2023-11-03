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
        // nextcourseNCA (466:208)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group257hVL (466:221)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // todoShp (466:222)
                    margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 10*fem),
                    child: Text(
                      'Todo',
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
                    // group256XDU (466:223)
                    padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfffdfdfd),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // miembrosdelproyectoqEA (466:225)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 196*fem, 0*fem),
                          child: Text(
                            'Miembros del Proyecto',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.8333333333*ffem/fem,
                              color: Color(0xff181818),
                            ),
                          ),
                        ),
                        Container(
                          // group30Xcn (466:226)
                          width: 16*fem,
                          height: 16*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-30-Bri.png',
                            width: 16*fem,
                            height: 16*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group255fU6 (466:209)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // documentosPQ6 (466:211)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 255*fem, 0*fem),
                    child: Text(
                      'Documentos',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group30tLr (466:212)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-30-y1t.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group2511wG (466:215)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // enlaceswa2 (466:217)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 283*fem, 0*fem),
                    child: Text(
                      'Enlaces',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group30fF8 (466:218)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-30-qTY.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34CVx (466:229)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fuentesijC (466:231)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 281*fem, 0*fem),
                    child: Text(
                      'Fuentes',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group333Fg (466:232)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-33-Yjk.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group258MnA (466:235)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // entregablesGu8 (466:237)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 259*fem, 0*fem),
                    child: Text(
                      'Entregables',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group33QEe (466:238)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-33-9SA.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group259Xq4 (466:241)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // versionesfAa (466:243)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 271*fem, 0*fem),
                    child: Text(
                      'Versiones',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group33B8v (466:244)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-33-Tmt.png',
                      width: 16*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group260vMQ (466:247)
              padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // otroseYJ (466:249)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 295*fem, 0*fem),
                    child: Text(
                      'Otros',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.8333333333*ffem/fem,
                        color: Color(0xff181818),
                      ),
                    ),
                  ),
                  Container(
                    // group33AFk (466:250)
                    width: 16*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-33-YJW.png',
                      width: 16*fem,
                      height: 16*fem,
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