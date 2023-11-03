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
        // detallesdocumentovuG (44:369)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Stack(
          children: [
            Positioned(
              // barshomeindicatoriphonelightpo (44:427)
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
                  // homeindicatorh2r (44:429)
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
              // autogroupoqfcDWz (WJ7K2z4BwkVjrnBPfwoQFc)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(11*fem, 113*fem, 16*fem, 59*fem),
                width: 375*fem,
                height: 778*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // image27MU (424:3)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 69*fem),
                      width: 348*fem,
                      height: 477*fem,
                      child: Image.asset(
                        'assets/page-1/images/image-2-Lw4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // buttoncontinue1Sr (109:1462)
                      margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                      width: 343*fem,
                      height: 60*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff4c6ed7),
                        borderRadius: BorderRadius.circular(6*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Continuar',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // sliderindicatorRWa (109:1457)
              left: 0*fem,
              top: 44*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/slider-indicator.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // barsstatusbariphonelighttf4 (44:430)
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
                      // timeuKG (44:446)
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
                      // cellularconnectionPkE (44:440)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/page-1/images/cellular-connection-bnS.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifiW4A (44:436)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
                      width: 15.33*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/page-1/images/wifi-V14.png',
                        width: 15.33*fem,
                        height: 11*fem,
                      ),
                    ),
                    Container(
                      // battery2HQ (44:432)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/page-1/images/battery-XSA.png',
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