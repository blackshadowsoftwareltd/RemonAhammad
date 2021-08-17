import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';
import 'package:remonahammad/provider/orientation_scroll.dart';
import 'package:provider/provider.dart';
import 'components.dart';

class PortraitSkyBackground extends StatelessWidget {
  double? value;

  @override
  Widget build(BuildContext context) {
    value = context.watch<OrientationScrollProvider>().portScroll;
    double top = value! < 150 ? 0 : value! - 150,
        right = value! < 150 ? 0 : value! - 150;
    return Container(
      height: 505,
      width: ScreenSize.pWidth,
      color: Colors.blue[100],
      child: Stack(
        children: [
          Positioned(top: -value! * 0.02, child: sky()),

          /// moon
          Positioned(top: top * .4 + 40, right: right * .5 + 80, child: moon()),

          /// bird
          Positioned(
              top: value! * .20 + 100, left: value! * .9, child: birdRight()),

          /// f22
          Positioned(
              top: 150 - value! * .45,
              right: 10 + value!,
              child: f22(15 + value! * .2)),
          Positioned(
              top: value! * .20 + 150, right: value! * .5, child: birdLeft()),

          /// tree
          Positioned(
              top: -value! * .40 + 175, left: -5, child: extraLargeTree()),

          /// tree
          Positioned(top: -value! * .40 + 190, right: 20, child: tree1()),

          /// mount
          Positioned(
              top: -value! * .50 + 200, left: -2, right: -2, child: mount()),

          /// tree
          Positioned(top: -value! * .55 + 270, left: 50, child: bigTree2()),

          /// bird
          Positioned(
              top: value! * .20 + 160,
              right: value! * .5 - 20,
              child: birdDown()),

          /// Grass
          Positioned(
              top: -value! * .75 + 345,
              left: -value! * .2 - 5,
              child: grass4()),
          Positioned(
              top: -value! * .80 + 360, left: 50, child: verySmallTree()),
          Positioned(
              top: -value! * .85 + 390,
              right: -value! * .2 - 5,
              child: grass3()),
          Positioned(top: -value! * .85 + 380, right: 10, child: tree3()),
          Positioned(
              top: -value! * .95 + 435,
              left: -value! * .2 - 5,
              child: grass2()),
          Positioned(
              top: -value! * .92 + 415, left: 10, child: verySmallTreeR()),
          Positioned(
              top: -value! * .92 + 410, right: 100, child: verySmallTree()),
          Positioned(
              top: -value! * .98 + 460,
              right: -value! * .5 - 10,
              child: grass1()),
          Positioned(
              top: -value! * .98 + 455,
              left: -value! * .5 - 10,
              child: grass1()),
          Positioned(
              top: -value! + 475, left: -value! * .2 - 10, child: grass()),
        ],
      ),
    );
  }
}
