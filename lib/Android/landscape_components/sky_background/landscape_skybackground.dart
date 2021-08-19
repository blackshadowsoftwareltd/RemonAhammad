import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';
import 'package:remonahammad/provider/orientation_scroll.dart';
import 'package:provider/provider.dart';
import 'components.dart';

class LandscapeSkyBackground extends StatelessWidget {
  double? value;
  @override
  Widget build(BuildContext context) {
    value = context.watch<OrientationScrollProvider>().landScroll;
    double top = value! < 150 ? 0 : value! - 150,
        right = value! < 150 ? 0 : value! - 150;
   
    return Container(
      height: 405,
      width: ScreenSize.pWidth,
      color: Colors.blue[100],
      child: Stack(
        children: [
          Positioned(top: -value! * 0.02, child: sky()),

          /// moon
          Positioned(top: top * .2 + 40, left: -right * .3+ 350, child: moon()),

          /// bird
          Positioned(
              top: value! * .20 +100, left:150+ value! * .9, child: birdRight()),

          /// f22
          Positioned(
              top: 180 - value! * .7,
              right:50+ value!,
              child: f22(15 + value! * .2)),
          Positioned(
              top: value! * .20 + 100, right:  value! +ScreenSize.pWidth!*.3, child: birdLeft()),

          /// tree
          Positioned(
              top: -value! * .40 +150, left: 5, child: extraLargeTree()),

          /// tree
          Positioned(top: -value! * .50 +200, right:100, child: tree1()),

          /// mount
          Positioned(
              top: -value! * .60 + 130,       
              left: -2,
              right: -2,
              child: mount()),

          /// tree
          Positioned(top: -value! * .75 + 250, left: 50, child: bigTree2()),

          /// bird
          Positioned(
              top: value! * .20 + 60,
              right: value! * .5 + 50,
              child: birdDown()),

          /// Grass
          Positioned(
              top: -value! * .92 + 315,
              left: -value! * .2 - 5,
              child: grass4()),
          Positioned(
              top: -value! * .88 + 300, left: 200, child: verySmallTree()),
          Positioned(
              top: -value! * .88 + 325,
              right: -value! * .2 - 5,
              child: grass3()),
          Positioned(top: -value! * .90 + 285, right: 10, child: tree3()),
          Positioned(
              top: -value! * .95 + 345,
              left: -value! * .2 - 5,
              child: grass2()),
          Positioned(
              top: -value! * .90 + 320, left: 50, child: verySmallTreeR()),
          Positioned(
              top: -value! * .90 + 320, right: 100, child: verySmallTree()),
          Positioned(
              top: -value! * .97 + 355,
              right: -value! * .3 - 10,
              child: grass1()),
          Positioned(
              top: -value! * .98 + 360,
              left: -value! * .3 - 10,
              child: grass1()),
          Positioned(
              top: -value! + 370, left: -value! * .2 - 10, child: grass()),
        ],
      ),
    );
  }
}
