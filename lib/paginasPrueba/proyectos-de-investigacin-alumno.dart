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
        // proyectosdeinvestigacinalumnoe (227:82)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonelightkRQ (227:1062)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 35*fem),
              padding: EdgeInsets.fromLTRB(34.5*fem, 13*fem, 14.34*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x16000000),
                    offset: Offset(0*fem, 1*fem),
                    blurRadius: 1*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeyZ4 (227:1078)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 232.5*fem, 0*fem),
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'SF Pro Text',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3333333333*ffem/fem,
                        letterSpacing: -0.2399999946*fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // cellularconnectionTz2 (227:1072)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                    width: 17*fem,
                    height: 10.67*fem,
                    child: Image.asset(
                      'assets/page-1/images/cellular-connection.png',
                      width: 17*fem,
                      height: 10.67*fem,
                    ),
                  ),
                  Container(
                    // wifiaYr (227:1068)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
                    width: 15.33*fem,
                    height: 11*fem,
                    child: Image.asset(
                      'assets/page-1/images/wifi.png',
                      width: 15.33*fem,
                      height: 11*fem,
                    ),
                  ),
                  Container(
                    // batteryJUr (227:1064)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                    width: 24.33*fem,
                    height: 11.33*fem,
                    child: Image.asset(
                      'assets/page-1/images/battery-io4.png',
                      width: 24.33*fem,
                      height: 11.33*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupxwd4pTC (WJ7DJebwgomzVWWcCvxwD4)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 29.35*fem),
              width: double.infinity,
              height: 545.65*fem,
              child: Stack(
                children: [
                  Positioned(
                    // lessonlistingsyouteachk5x (227:83)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 343*fem,
                      height: 530*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // group165eh8 (227:664)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 343*fem,
                              height: 162*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupzhbyM5k (WJ7DgioVtQotiv1Zr7zhbY)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 171*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // maskgroupGTc (227:665)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            width: 171*fem,
                                            height: 162*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0xff2f80ed),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // maskgroupPHL (227:667)
                                              child: SizedBox(
                                                width: 171*fem,
                                                height: 162*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/mask-group-TXx.png',
                                                  width: 171*fem,
                                                  height: 162*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle69Wcr (227:1021)
                                          left: 10*fem,
                                          top: 10*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 78*fem,
                                              height: 30*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                  color: Color(0xfffdfdfd),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // sistemaswebPge (227:1033)
                                          left: 14*fem,
                                          top: 15*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 69*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Sistemas Web',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4c6ed7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroup2bs2Ui6 (WJ7DriWqwUdovTSidR2bS2)
                                    width: 162*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // sistemadegestindetiecJW (227:1024)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                          child: Text(
                                            'Sistema de gestión de tie...',
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
                                          // autogroupdjrehar (WJ7Dzo7iTzK2UW8sBCDJrE)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // archivosDp6 (227:1022)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                                child: Text(
                                                  '10 Archivos',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 2*ffem/fem,
                                                    color: Color(0xff4f4f4f),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group198RG (227:1034)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                width: 16*fem,
                                                height: 16*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-19-KUv.png',
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                ),
                                              ),
                                              Text(
                                                // h05mqKg (227:1023)
                                                '2h 05m',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group338Acr (227:1090)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 45*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // group27hMt (227:1086)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                                width: 16*fem,
                                                height: 16*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-27.png',
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                ),
                                              ),
                                              Text(
                                                // estudiantes1tN (227:1080)
                                                '5 Estudiantes',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group164xYi (227:1028)
                                          width: double.infinity,
                                          height: 40*fem,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupajgeuir (WJ7EGxKTX1fTabXAGkajge)
                                                width: 81*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xffe0e0e0)),
                                                  color: Color(0xfffdfdfd),
                                                  borderRadius: BorderRadius.only (
                                                    topLeft: Radius.circular(6*fem),
                                                    bottomLeft: Radius.circular(6*fem),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Ver',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.8333333333*ffem/fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // autogroupbtzyapz (WJ7EMNMmZLGe2UcxCbBtZY)
                                                width: 81*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xffe0e0e0)),
                                                  color: Color(0xfffdfdfd),
                                                  borderRadius: BorderRadius.only (
                                                    topRight: Radius.circular(6*fem),
                                                    bottomRight: Radius.circular(6*fem),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Discuss',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.8333333333*ffem/fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // group1663ia (408:248)
                            left: 0*fem,
                            top: 183*fem,
                            child: Container(
                              width: 343*fem,
                              height: 162*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupj3uny6S (WJ7F5M9pacLh4Z3PUpj3UN)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 171*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // maskgrouptjC (408:249)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            width: 171*fem,
                                            height: 162*fem,
                                            decoration: BoxDecoration (
                                              color: Color(0xff2f80ed),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Center(
                                              // maskgroupDWa (408:251)
                                              child: SizedBox(
                                                width: 171*fem,
                                                height: 162*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/mask-group.png',
                                                  width: 171*fem,
                                                  height: 162*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle69Lr6 (408:255)
                                          left: 10*fem,
                                          top: 10*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 78*fem,
                                              height: 30*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(6*fem),
                                                  color: Color(0xfffdfdfd),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // mvilesSPL (408:264)
                                          left: 29*fem,
                                          top: 15*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 38*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Móviles',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4c6ed7),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupzmzrXva (WJ7FCvmXQNKp484aVLZMzr)
                                    width: 162*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // sistemadeinventariogHg (408:258)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                          child: Text(
                                            'Sistema de Inventario',
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
                                          // autogroupiv5ubQe (WJ7FLFteNkTtGTFHjDiV5U)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // archivosvhp (408:256)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                                child: Text(
                                                  '10 Archivos',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 2*ffem/fem,
                                                    color: Color(0xff4f4f4f),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group19q46 (408:265)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                                width: 16*fem,
                                                height: 16*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-19-e9x.png',
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                ),
                                              ),
                                              Text(
                                                // h30mkRx (408:257)
                                                '1h 30m',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group338HRt (408:269)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 45*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // group27cyx (408:271)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                                width: 16*fem,
                                                height: 16*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-27-AN6.png',
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                ),
                                              ),
                                              Text(
                                                // estudianteswmL (408:270)
                                                '3 Estudiantes',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // group164sut (408:259)
                                          width: double.infinity,
                                          height: 40*fem,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupb8pldPG (WJ7Fazy5byMiHXZY8Xb8PL)
                                                width: 81*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xffe0e0e0)),
                                                  color: Color(0xfffdfdfd),
                                                  borderRadius: BorderRadius.only (
                                                    topLeft: Radius.circular(6*fem),
                                                    bottomLeft: Radius.circular(6*fem),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Ver',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.8333333333*ffem/fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // autogroupchn2Hii (WJ7FeahSohp4oHD4pvcHn2)
                                                width: 81*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xffe0e0e0)),
                                                  color: Color(0xfffdfdfd),
                                                  borderRadius: BorderRadius.only (
                                                    topRight: Radius.circular(6*fem),
                                                    bottomRight: Radius.circular(6*fem),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Discuss',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.8333333333*ffem/fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // group167MyU (408:275)
                            left: 0*fem,
                            top: 122*fem,
                            child: Container(
                              width: 343*fem,
                              height: 408*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupdviwhGe (WJ7GEjPD9r3x4YmqL1dviW)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 171*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // studyingcuateDkn (409:207)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 31.16*fem),
                                          width: 147*fem,
                                          height: 109.84*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/studying-cuate-ExA.png',
                                            width: 147*fem,
                                            height: 109.84*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupgez6ihY (WJ7GNj9tPu7V2BX9xFGEz6)
                                          width: double.infinity,
                                          height: 162*fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // maskgroup52J (408:276)
                                                left: 0*fem,
                                                top: 0*fem,
                                                child: Container(
                                                  width: 171*fem,
                                                  height: 162*fem,
                                                  decoration: BoxDecoration (
                                                    color: Color(0xff2f80ed),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                  child: Center(
                                                    // maskgroupCMp (408:278)
                                                    child: SizedBox(
                                                      width: 171*fem,
                                                      height: 162*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/mask-group-q6A.png',
                                                        width: 171*fem,
                                                        height: 162*fem,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // rectangle69KBY (408:282)
                                                left: 10*fem,
                                                top: 10*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 78*fem,
                                                    height: 30*fem,
                                                    child: Container(
                                                      decoration: BoxDecoration (
                                                        borderRadius: BorderRadius.circular(6*fem),
                                                        color: Color(0xfffdfdfd),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // algortmicape6 (408:291)
                                                left: 20*fem,
                                                top: 15*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 56*fem,
                                                    height: 20*fem,
                                                    child: Text(
                                                      'Algorítmica',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'Inter',
                                                        fontSize: 10*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 2*ffem/fem,
                                                        color: Color(0xff4c6ed7),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupuienUTk (WJ7GaJevqgdNVZv1GsuieN)
                                    width: 162*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // archivosp1p (408:283)
                                          left: 0*fem,
                                          top: 273*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 55*fem,
                                              height: 20*fem,
                                              child: Text(
                                                '10 Archivos',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // h00m7Wi (408:284)
                                          left: 125*fem,
                                          top: 273*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 37*fem,
                                              height: 20*fem,
                                              child: Text(
                                                '0h 00m',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 2*ffem/fem,
                                                  color: Color(0xff4f4f4f),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // proyectogestiondefar16J (408:285)
                                          left: 0*fem,
                                          top: 246*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 143*fem,
                                              height: 22*fem,
                                              child: Text(
                                                'Proyecto Gestion de Far..',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.8333333333*ffem/fem,
                                                  color: Color(0xff181818),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // group164JLJ (408:286)
                                          left: 0*fem,
                                          top: 368*fem,
                                          child: Container(
                                            width: 162*fem,
                                            height: 40*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xffe0e0e0)),
                                              color: Color(0xfffdfdfd),
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // group339QeE (408:302)
                                          left: 0*fem,
                                          top: 183*fem,
                                          child: Container(
                                            width: 162*fem,
                                            height: 41*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Align(
                                              // rectangle70LXt (408:303)
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                width: double.infinity,
                                                height: 40*fem,
                                                child: Container(
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                    border: Border.all(color: Color(0xffe0e0e0)),
                                                    color: Color(0xfffdfdfd),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // group340TcW (408:306)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Container(
                                            width: 162*fem,
                                            height: 399*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(6*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // autogroupklfkaBL (WJ7Gs8WEANuGLxruknkLfk)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 151*fem),
                                                  width: double.infinity,
                                                  height: 41*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // rectangle706Qa (408:307)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 162*fem,
                                                            height: 40*fem,
                                                            child: Container(
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(6*fem),
                                                                border: Border.all(color: Color(0xffe0e0e0)),
                                                                color: Color(0xfffdfdfd),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // vermsNcz (408:309)
                                                        left: 58*fem,
                                                        top: 10*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 46*fem,
                                                            height: 22*fem,
                                                            child: Text(
                                                              'Ver más',
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 12*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.8333333333*ffem/fem,
                                                                color: Color(0xff333333),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // verms4Ev (408:310)
                                                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 61*fem),
                                                  child: Text(
                                                    'Ver más',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.8333333333*ffem/fem,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // group19xbC (408:292)
                                                  margin: EdgeInsets.fromLTRB(62*fem, 0*fem, 0*fem, 0*fem),
                                                  width: 16*fem,
                                                  height: 16*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/group-19.png',
                                                    width: 16*fem,
                                                    height: 16*fem,
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupfs9t5A2 (WJ7Gz8JZzvacBeGKJVfs9t)
                                                  padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // group338PwQ (408:296)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 54*fem),
                                                        width: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              // group27uuk (408:298)
                                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                                              width: 16*fem,
                                                              height: 16*fem,
                                                              child: Image.asset(
                                                                'assets/page-1/images/group-27-oGE.png',
                                                                width: 16*fem,
                                                                height: 16*fem,
                                                              ),
                                                            ),
                                                            Text(
                                                              // estudiantesQrW (408:297)
                                                              '4 Estudiantes',
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 10*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 2*ffem/fem,
                                                                color: Color(0xff4f4f4f),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        // vermsM14 (408:311)
                                                        margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                                                        child: Text(
                                                          'Ver más',
                                                          style: SafeGoogleFont (
                                                            'Inter',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.8333333333*ffem/fem,
                                                            color: Color(0xff333333),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // studyingcuate2st (409:5)
                            left: 16*fem,
                            top: 47*fem,
                            child: Align(
                              child: SizedBox(
                                width: 147*fem,
                                height: 107.84*fem,
                                child: Image.asset(
                                  'assets/page-1/images/studying-cuate.png',
                                  width: 147*fem,
                                  height: 107.84*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // studyingbroKc6 (408:3)
                    left: 12*fem,
                    top: 412*fem,
                    child: Align(
                      child: SizedBox(
                        width: 150*fem,
                        height: 133.65*fem,
                        child: Image.asset(
                          'assets/page-1/images/studying-bro.png',
                          width: 150*fem,
                          height: 133.65*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonedit1Uv (409:409)
              margin: EdgeInsets.fromLTRB(96*fem, 0*fem, 73*fem, 21*fem),
              width: double.infinity,
              height: 35*fem,
              decoration: BoxDecoration (
                color: Color(0xff4c6ed7),
                borderRadius: BorderRadius.circular(6*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Ver más',
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
            ),
            Container(
              // bottomnavrEe (227:1038)
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x16000000),
                    offset: Offset(0*fem, -1*fem),
                    blurRadius: 1*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group129Dk (227:1040)
                    padding: EdgeInsets.fromLTRB(51*fem, 22*fem, 50*fem, 22*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfffdfdfd),
                    ),
                    child: Center(
                      // group11GZG (227:1042)
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-11.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group13Ptn (227:1046)
                    width: 125*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfffdfdfd),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle38vti (227:1048)
                          left: 16*fem,
                          top: 15*fem,
                          child: Align(
                            child: SizedBox(
                              width: 93*fem,
                              height: 38*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                  color: Color(0xfffdfdfd),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // proyectosdYE (227:1049)
                          left: 57*fem,
                          top: 24*fem,
                          child: Align(
                            child: SizedBox(
                              width: 57*fem,
                              height: 22*fem,
                              child: Text(
                                'Proyectos',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8333333333*ffem/fem,
                                  color: Color(0xff4c6ed7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group48E6 (227:1050)
                          left: 28*fem,
                          top: 23*fem,
                          child: Align(
                            child: SizedBox(
                              width: 24*fem,
                              height: 24*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-4.png',
                                width: 24*fem,
                                height: 24*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group14eCS (227:1054)
                    padding: EdgeInsets.fromLTRB(51*fem, 22*fem, 50*fem, 22*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfffdfdfd),
                    ),
                    child: Center(
                      // group7NPL (227:1056)
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-7.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // barshomeindicatoriphonelightpo (227:1059)
              padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffdfdfd),
              ),
              child: Center(
                // homeindicator1BQ (227:1061)
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
          ],
        ),
      ),
          );
  }
}