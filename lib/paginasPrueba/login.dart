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
        // loginL8z (24:0)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Stack(
          children: [
            Positioned(
              // formloginfwx (109:1389)
              left: 0*fem,
              top: 329*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 57*fem, 16*fem, 81*fem),
                width: 375*fem,
                height: 483*fem,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // logini9Y (109:1386)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 35*fem),
                      width: double.infinity,
                      height: 88*fem,
                      child: Container(
                        // autogroupasgvFQN (WJ7KtYTwnnYutRd1xhAsgv)
                        padding: EdgeInsets.fromLTRB(8*fem, 0*fem, 8*fem, 10*fem),
                        width: double.infinity,
                        height: 87*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ingresatuusuarioycontraseaAXL (24:30)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                              child: Text(
                                'Ingresa tu usuario y contraseña',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5555555556*ffem/fem,
                                  color: Color(0xff181818),
                                ),
                              ),
                            ),
                            Text(
                              // correoinstitucionalFYn (24:28)
                              'Correo institucional',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.7142857143*ffem/fem,
                                color: Color(0xff181818),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // passwordBSS (109:1387)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // autogroupsnvniBU (WJ7KhTx53kj7yWu8BKsnvN)
                            margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 8*fem, 10*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // contraseaT2a (24:32)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 226*fem, 0*fem),
                                  child: Text(
                                    'Contraseña',
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
                                  // group61ZbQ (93:795)
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-61.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line26LS (24:33)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                            width: double.infinity,
                            height: 1*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff181818),
                            ),
                          ),
                          Container(
                            // olvidastetucontraseaqJ2 (24:34)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333*ffem/fem,
                                color: Color(0xff4f4f4f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // buttonLVg (109:1388)
                      margin: EdgeInsets.fromLTRB(29*fem, 0*fem, 29*fem, 0*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupfuenG8S (WJ7KZUBPohfb1t9oZ6FUen)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                            width: double.infinity,
                            height: 54*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff4c6ed7),
                              borderRadius: BorderRadius.circular(6*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Iniciar sesión',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.7142857143*ffem/fem,
                                  color: Color(0xfffdfdfd),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // problemasparaingresarconsultac (24:37)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 154*fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6666666667*ffem/fem,
                                  color: Color(0xff181818),
                                ),
                                children: [
                                  TextSpan(
                                    text: '¿Problemas para ingresar?',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.8333333333*ffem/fem,
                                      color: Color(0xff181818),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' \n',
                                  ),
                                  TextSpan(
                                    text: 'Consulta con tu facultad',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.8333333333*ffem/fem,
                                      color: Color(0xff4c6ed7),
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
              // autogroupvchgb6A (WJ7KMj1xnzvLMfsJPNVChG)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(138*fem, 67*fem, 131*fem, 76*fem),
                width: 375*fem,
                height: 329*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // image1tqx (409:4)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
                      width: 106*fem,
                      height: 125*fem,
                      child: Image.asset(
                        'assets/page-1/images/image-1.png',
                      ),
                    ),
                    Container(
                      // spifisiRL6 (235:23)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
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
                  ],
                ),
              ),
            ),
            Positioned(
              // barshomeindicatoriphonelightpo (24:7)
              left: 0*fem,
              top: 778*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                width: 375*fem,
                height: 34*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Center(
                  // homeindicatorpt2 (24:9)
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
            ),
            Positioned(
              // barsstatusbariphonelightMd4 (24:10)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(34.5*fem, 13*fem, 14.34*fem, 11*fem),
                width: 375*fem,
                height: 44*fem,
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
                      // timenTU (24:26)
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
                      // cellularconnectionry8 (24:20)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/page-1/images/cellular-connection-CUa.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifi8ve (24:16)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
                      width: 15.33*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/page-1/images/wifi-BhL.png',
                        width: 15.33*fem,
                        height: 11*fem,
                      ),
                    ),
                    Container(
                      // batterypoU (24:12)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/page-1/images/battery-Ygz.png',
                        width: 24.33*fem,
                        height: 11.33*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}