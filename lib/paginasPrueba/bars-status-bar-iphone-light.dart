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
        // barsstatusbariphonelightwri (466:268)
        padding: EdgeInsets.fromLTRB(34.5*fem, 13*fem, 14.34*fem, 11*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // timeFcW (466:284)
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
              // cellularconnectionMfY (466:278)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
              width: 17*fem,
              height: 10.67*fem,
              child: Image.asset(
                'assets/page-1/images/cellular-connection-LpS.png',
                width: 17*fem,
                height: 10.67*fem,
              ),
            ),
            Container(
              // wifisdt (466:274)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
              width: 15.33*fem,
              height: 11*fem,
              child: Image.asset(
                'assets/page-1/images/wifi-g4z.png',
                width: 15.33*fem,
                height: 11*fem,
              ),
            ),
            Container(
              // batteryQ82 (466:270)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
              width: 24.33*fem,
              height: 11.33*fem,
              child: Image.asset(
                'assets/page-1/images/battery.png',
                width: 24.33*fem,
                height: 11.33*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}