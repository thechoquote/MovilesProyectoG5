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
        // detallesdelproyector2n (246:404)
        width: double.infinity,
        height: 1083*fem,
        decoration: BoxDecoration (
          color: Color(0xfffdfdfd),
        ),
        child: Stack(
          children: [
            Positioned(
              // coursepreviews6J (404:1)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 355*fem,
                  child: Image.asset(
                    'assets/page-1/images/course-preview-o78.png',
                    width: 375*fem,
                    height: 355*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle31LVg (246:414)
              left: 0*fem,
              top: 244*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 842*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffdfdfd),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(60*fem),
                        topRight: Radius.circular(60*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // buttoneditbgW (246:415)
              left: 14*fem,
              top: 937*fem,
              child: Container(
                width: 343*fem,
                height: 60*fem,
                decoration: BoxDecoration (
                  color: Color(0xff4c6ed7),
                  borderRadius: BorderRadius.circular(6*fem),
                ),
                child: Center(
                  child: Text(
                    'Editar Proyecto',
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
            Positioned(
              // nextcourseCAW (246:418)
              left: 0*fem,
              top: 558*fem,
              child: Container(
                width: 375*fem,
                height: 328*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group2576Ft (246:438)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // todo2vE (246:439)
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
                            // group256XVc (246:440)
                            padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xfffdfdfd),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // miembrosdelproyectoAoU (246:442)
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
                                  // group30eCr (246:443)
                                  width: 16*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-30-oGN.png',
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
                      // group255ZKp (246:424)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // documentosGEE (246:426)
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
                            // group30NYA (246:505)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-30.png',
                              width: 16*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group2515Sa (246:431)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // enlacesCXC (246:433)
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
                            // group30X3g (246:508)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-30-UEW.png',
                              width: 16*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group34Eyg (246:446)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // fuentesZFG (246:448)
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
                            // group33GQa (246:449)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-33.png',
                              width: 16*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group258Cp2 (246:511)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // entregablesL9Y (246:513)
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
                            // group33eAE (246:514)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-33-PXx.png',
                              width: 16*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group259Nc2 (246:517)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // versionesgMp (246:519)
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
                            // group33PX8 (246:520)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-33-VAz.png',
                              width: 16*fem,
                              height: 16*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group260iZQ (246:523)
                      padding: EdgeInsets.fromLTRB(16*fem, 10*fem, 16*fem, 10*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xfffdfdfd),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // otrosc8z (246:525)
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
                            // group33X14 (246:526)
                            width: 16*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-33-vJv.png',
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
            ),
            Positioned(
              // coursedescT9c (246:470)
              left: 16*fem,
              top: 398*fem,
              child: Container(
                width: 324*fem,
                height: 129*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // descripcinBLW (246:471)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      child: Text(
                        'Descripción',
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
                      // loremipsumdolorsitametconsecte (246:472)
                      constraints: BoxConstraints (
                        maxWidth: 324*fem,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.8333333333*ffem/fem,
                            color: Color(0xff4f4f4f),
                          ),
                          children: [
                            TextSpan(
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse dolor etiam sed ante donec quis sapien. Malesuada rhoncus nullam eleifend lorem egestas mauris massa massa',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8333333333*ffem/fem,
                                color: Color(0xff4f4f4f),
                              ),
                            ),
                            TextSpan(
                              text: '. ',
                            ),
                            TextSpan(
                              text: 'Más.',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.7142857143*ffem/fem,
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
            ),
            Positioned(
              // coursetitleJjt (246:473)
              left: 16*fem,
              top: 293*fem,
              child: Container(
                width: 319*fem,
                height: 75*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // sistemadegestindetiendasR3p (246:474)
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
                      // autogroupjooguza (WJ7Btc8KAonb4rQjsyjoog)
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // sistemaswebfD4 (246:475)
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
                            // ciclo7NtA (246:504)
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
            ),
            Positioned(
              // backv8z (246:479)
              left: 16*fem,
              top: 55*fem,
              child: Align(
                child: SizedBox(
                  width: 32*fem,
                  height: 32*fem,
                  child: Image.asset(
                    'assets/page-1/images/back-8JE.png',
                    width: 32*fem,
                    height: 32*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // barshomeindicatoriphonelightpo (246:484)
              left: 0*fem,
              top: 1049*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                width: 375*fem,
                height: 34*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Center(
                  // homeindicatorX8n (246:486)
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
              // barsstatusbariphonelightqvA (246:487)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(34.5*fem, 13*fem, 14.34*fem, 11*fem),
                width: 375*fem,
                height: 44*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffdfdfd),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeWmQ (246:503)
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
                      // cellularconnectionR7g (246:497)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 17*fem,
                      height: 10.67*fem,
                      child: Image.asset(
                        'assets/page-1/images/cellular-connection-gV8.png',
                        width: 17*fem,
                        height: 10.67*fem,
                      ),
                    ),
                    Container(
                      // wifi826 (246:493)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0.34*fem),
                      width: 15.33*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/page-1/images/wifi-iRQ.png',
                        width: 15.33*fem,
                        height: 11*fem,
                      ),
                    ),
                    Container(
                      // batteryS2n (246:489)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 24.33*fem,
                      height: 11.33*fem,
                      child: Image.asset(
                        'assets/page-1/images/battery-XKG.png',
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