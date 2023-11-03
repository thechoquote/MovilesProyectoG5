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
        // detallesdelperfildr2 (421:2)
        width: double.infinity,
        height: 1061*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupexrnem8 (WJ7LPn8EPrVX9LR2zgExrn)
              left: 0*fem,
              top: 638*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(1*fem, 19*fem, 0*fem, 137*fem),
                width: 375*fem,
                height: 423*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // privacypolicy9Sz (421:7)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 182*fem),
                      padding: EdgeInsets.fromLTRB(16*fem, 4*fem, 15*fem, 4*fem),
                      width: 375*fem,
                      height: 57*fem,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupofwjRvJ (WJ7LZ7C2BFPybaHaPcofWJ)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 10*fem, 0*fem),
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-ofwj.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          Container(
                            // politicasdeprivacidad9LW (421:10)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 158*fem, 0*fem),
                            child: Text(
                              'Politicas de privacidad',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // group1183gn (421:15)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-118.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // cerrarsesinBY6 (421:3)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                      child: Text(
                        'Cerrar sesión',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5555555556*ffem/fem,
                          color: Color(0xff4c6ed7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // phone69G (421:18)
              left: 0*fem,
              top: 581*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 5*fem, 16*fem, 5*fem),
                width: 375*fem,
                height: 57*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupchc6kjc (WJ7LqBZZwp8j7Fj3ZdchC6)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 23*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-chc6.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Container(
                      // autogroupdranGCA (WJ7LtmHw9Yb5d1NaG2dran)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 171*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // numerodecelularnwC (421:21)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                            child: Text(
                              'Numero de celular',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // W6W (421:22)
                            '999888777',
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
                      // editareTc (421:26)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Editar',
                        textAlign: TextAlign.right,
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
            ),
            Positioned(
              // passwordY3C (421:36)
              left: 0*fem,
              top: 514*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 5*fem, 16*fem, 5*fem),
                width: 375*fem,
                height: 57*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupqjpgpFc (WJ7M6RdAsniegoiFWCqjPg)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 23*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-qjpg.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Container(
                      // presionaparacambiardecontrasea (421:40)
                      margin: EdgeInsets.fromLTRB(0*fem, 27*fem, 99*fem, 0*fem),
                      child: Text(
                        'Presiona para cambiar de contraseña',
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
                      // editarQzW (421:44)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Editar',
                        textAlign: TextAlign.right,
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
            ),
            Positioned(
              // emailXZL (421:45)
              left: 0*fem,
              top: 447*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 5*fem, 16*fem, 5*fem),
                width: 375*fem,
                height: 57*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphdjxpYS (WJ7MFb2a6GPjxDh944Hdjx)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 23*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-hdjx.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Container(
                      // autogrouprbrtjfQ (WJ7MKLRKrv5TeoEKbYRbRt)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 118*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // correo5DU (421:48)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                            child: Text(
                              'Correo',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // sebastiannunezunmsmedupebhc (421:49)
                            'sebastian.nunez@unmsm.edu.pe',
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
                      // editarjJ2 (421:53)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Editar',
                        textAlign: TextAlign.right,
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
            ),
            Positioned(
              // nameFXG (421:54)
              left: 0*fem,
              top: 380*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 5*fem, 16*fem, 5*fem),
                width: 375*fem,
                height: 57*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group114kD8 (421:56)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
                      width: 202*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupmrmpfqt (WJ7MYkCeYo8NBGRME9MrMp)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 3*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroup4dcnzNN (WJ7McaRbbuRmUFuMhB4DCN)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/auto-group-4dcn.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // nombreVa2 (421:58)
                                  'Nombre',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8333333333*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // sebastianalejandronuezmedinaqN (421:59)
                            margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'Sebastian Alejandro Nuñez Medina ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 2*ffem/fem,
                                color: Color(0xff4f4f4f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // editarYHQ (421:63)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      child: Text(
                        'Editar',
                        textAlign: TextAlign.right,
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
            ),
            Positioned(
              // buttonoptionerE (421:64)
              left: 0*fem,
              top: 289*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                width: 375*fem,
                height: 54*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group142YAv (421:66)
                      width: 171*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff4c6ed7),
                        borderRadius: BorderRadius.circular(4*fem),
                      ),
                      child: Center(
                        child: Text(
                          'General',
                          textAlign: TextAlign.center,
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
                      // group143REi (421:69)
                      width: 172*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Center(
                        child: Text(
                          'ABC',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.7142857143*ffem/fem,
                            color: Color(0xff4f4f4f),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // profileinfoiUi (421:72)
              left: 117*fem,
              top: 94*fem,
              child: Container(
                width: 145*fem,
                height: 175*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouptennqJS (WJ7MuV76D4KLv4o66dTENN)
                      margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 24*fem, 20*fem),
                      padding: EdgeInsets.fromLTRB(19*fem, 9*fem, 18*fem, 9*fem),
                      width: double.infinity,
                      height: 100*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(50*fem),
                      ),
                      child: Center(
                        // group60jPp (421:119)
                        child: SizedBox(
                          width: 63*fem,
                          height: 71*fem,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                            child: Image.asset(
                              'assets/page-1/images/group-60.png',
                              width: 63*fem,
                              height: 71*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // sebastiannuezeFt (421:74)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                      child: Text(
                        'Sebastian Nuñez',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5555555556*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      // sebastiannuez1239iS (421:75)
                      '@sebastian.nuñez123',
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
            ),
            Positioned(
              // bottomnavV1c (421:76)
              left: 0*fem,
              top: 959*fem,
              child: Container(
                width: 375*fem,
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
                      // group12ySa (421:78)
                      padding: EdgeInsets.fromLTRB(50*fem, 22*fem, 51*fem, 22*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Center(
                        // group2KFY (421:80)
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-2.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // group13Sb4 (421:83)
                      padding: EdgeInsets.fromLTRB(51*fem, 22*fem, 50*fem, 22*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Center(
                        // group5aBU (421:85)
                        child: SizedBox(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-5.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // group14hWz (421:89)
                      width: 125*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle38Emp (421:91)
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
                            // perfilLZx (421:92)
                            left: 53*fem,
                            top: 24*fem,
                            child: Align(
                              child: SizedBox(
                                width: 30*fem,
                                height: 22*fem,
                                child: Text(
                                  'Perfil',
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
                            // group6e4r (421:93)
                            left: 24*fem,
                            top: 23*fem,
                            child: Align(
                              child: SizedBox(
                                width: 24*fem,
                                height: 24*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-6.png',
                                  width: 24*fem,
                                  height: 24*fem,
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
            ),
            Positioned(
              // barshomeindicatoriphonelightpo (421:96)
              left: 0*fem,
              top: 1027*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                width: 375*fem,
                height: 34*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Center(
                  // homeindicatorFKY (421:98)
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
              // barsstatusbariphonelightymL (421:99)
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
                      // timedaz (421:115)
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
                      // cellularconnectionvpz (421:109)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/page-1/images/cellular-connection-cKC.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifiR14 (421:105)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
                      width: 15.33*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/page-1/images/wifi-Ps8.png',
                        width: 15.33*fem,
                        height: 11*fem,
                      ),
                    ),
                    Container(
                      // batteryHZ4 (421:101)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/page-1/images/battery-k7c.png',
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