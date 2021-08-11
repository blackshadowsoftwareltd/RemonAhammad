import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';

/// SKY
Widget sky() => Container(
    height: 350, child: Image.asset('assets/image/sky.png', fit: BoxFit.cover));

/// Grass 1
Widget grass1() => Container(
    height: 40,
    child: Image.asset('assets/image/grass1.png', fit: BoxFit.fitHeight));
Widget grass() => Container(
    height: 40,
    child: Image.asset('assets/image/grass.png', fit: BoxFit.fitHeight));
Widget grass2() => Container(
    height: 80,
    child: Image.asset('assets/image/grass2.png', fit: BoxFit.fitHeight));
Widget grass3() => Container(
    height: 80,
    child: Image.asset('assets/image/grass3.png', fit: BoxFit.fitHeight));
Widget grass4() => Container(
    height: 120,
    child: Image.asset('assets/image/grass4.png', fit: BoxFit.fitHeight));
Widget tree3() => Container(
    height: 80,
    child: Image.asset('assets/image/tree3.png', fit: BoxFit.fitHeight));
Widget verySmallTreeR() => Container(
    height: 60,
    child: Image.asset('assets/image/verySmallTreeR.png', fit: BoxFit.fitHeight));
Widget verySmallTree() => Container(
    height: 60,
    child: Image.asset('assets/image/verySmallTree.png', fit: BoxFit.fitHeight));
Widget mount() => Container(
   width:  ScreenSize.pWidth!+20,
    child: Image.asset('assets/image/mount.png', fit: BoxFit.fitWidth));
Widget birdDown() => Container(
   height: 170,
    child: Image.asset('assets/image/birdDown.png', fit: BoxFit.fitHeight));
Widget birdRight() => Container(
   height: 120,
    child: Image.asset('assets/image/birdRight.png', fit: BoxFit.fitHeight));
Widget birdLeft() => Container(
   height: 80,
    child: Image.asset('assets/image/birdLeft.png', fit: BoxFit.fitHeight));
Widget extraLargeTree() => Container(
   height: 80,
    child: Image.asset('assets/image/extraLargeTree.png', fit: BoxFit.fitHeight));
Widget bigTree2() => Container(
   height:100,
    child: Image.asset('assets/image/bigTree2.png', fit: BoxFit.fitHeight));
Widget tree1() => Container(
   height:90,
    child: Image.asset('assets/image/tree1.png', fit: BoxFit.fitHeight));
Widget f22(w) => Container(
  width:w ,
    child: Image.asset('assets/image/f22.png', fit: BoxFit.fitHeight));
Widget moon() => Container(
  width:20 ,
    child: Image.asset('assets/image/moon.png', fit: BoxFit.fitHeight));
