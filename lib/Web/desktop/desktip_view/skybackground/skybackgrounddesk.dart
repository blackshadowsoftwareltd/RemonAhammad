import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';
import 'package:provider/provider.dart';
import 'package:remonahammad/provider/orientation_scroll.dart';
import 'package:remonahammad/services/platform_services.dart';
import 'components.dart';

class SkyBackgroundDesktop extends StatelessWidget {
  double? value, width;
  @override
  Widget build(BuildContext context) {
    ///
    width = MediaQuery.of(context).size.width;

    ///
    value = context.watch<OrientationScrollProvider>().desktopScroll;
    double top = value! < 150 ? 0 : value! - 150,
        right = value! < 150 ? 0 : value! - 150;

    bool isDesktop = PlatFormServices.isDesktop(context);
    return Container(
      height: 605,
      width: ScreenSize.pWidth,
      color: Colors.blue[100],
      child: Stack(
        children: [
          Positioned(
              top: -value! * 0.02, child: sky(isDesktop ? 500 : 400, width)),

          /// moon
          Positioned(top: top * .4 + 40, right: right * .5 +width!/3, child: moon()),

          /// bird
          Positioned(
              top: value! * .20 + 100, left: value! * .9+width!/3, child: birdRight()),

          /// f22
          Positioned(
              top:isDesktop? 145 - value! * .42: 145 - value! * .45,
              right:isDesktop?30+value!*1.1: 50 + value!,
              child: f22(15 + value! * .25)),
          Positioned(
              top: value! * .20 + 140, right: value! * .8+width!/5, child: birdLeft()),

          /// tree
          Positioned(
              top: -value! * .35 + 140, left:isDesktop? width!*.1-100: width!*.1-50, child: extraLargeTree()),

          /// tree
          Positioned(top:isDesktop? -value! * .40 + 205:-value! * .40 + 220, right: width!/8, child: tree1()),

          /// mount
          Positioned(
              top:isDesktop?-value! * .40 + 220-width!*.07: -value! * .50 + 200, left: -2, right: -2, child: mount(width)),

          /// tree
          Positioned(top: -value! * .55 + 270, left:width!/10, child: bigTree2()),

          /// bird
          Positioned(
              top: value! * .20 + 160,
              right: value! * .5+50,
              child: birdDown()),

          /// Grass
          Positioned(
              top: -value! * .75 + 380,
              left: -value! * .2 - 5,
              child: grass4(width!/1.2)),
          Positioned(
              top: -value! * .75 + 380,
              right: value! * .1 -200,
              child: grass4(width!/1.2)),
          Positioned(
              top: -value! * .80 + 370, left:width!/2, child: verySmallTree()),
          Positioned(
              top: -value! * .85 + 430,
              right: -value! * .2 - 5,
              child: grass3(width!+110)),
          Positioned(top: isDesktop?-value! * .85 + 410:-value! * .85 + 415, right: 10, child: tree3()),
          Positioned(
              top: -value! * .92 + 480,
              left: -value! * .2 - 5,
              child: grass2(width!+110)),
          Positioned(
              top: -value! * .90 + 480, left: 10, child: verySmallTreeR()),
          Positioned(
              top: -value! * .90 + 480, right: 100, child: verySmallTree()),

          Positioned(
              top: -value! * .98 + 530,
              left: -value! * .3 - 50,
              child: grass1(isDesktop ? 1200 : 900)),
          Positioned(
              top: -value! * .98 + 535,
              right: -value! * .3 - 10,
              child: grass1(isDesktop ? 1200 : 900)),
          Positioned(
              top: isDesktop ? -value! + 550 : -value! + 555,
              left: -value! * .2 - 10,
              child: grass(isDesktop ? 1000 : 700)),
        ],
      ),
    );
  }
}
