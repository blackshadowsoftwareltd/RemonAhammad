import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';

/// SKY
Widget sky(height, width) => Container(
    height: height,
    width: width,
    child: Image.asset('assets/image/skyweb.png', fit: BoxFit.cover));

/// Grass 1
Widget grass1(width) => Container(
    width: width,
    child: Image.asset('assets/image/grass1.png', fit: BoxFit.fitWidth));
Widget grass(width) => Container(
    // height: 70,
    width: width,
    child: Image.asset('assets/image/grass.png', fit: BoxFit.fitWidth));
Widget grass2(width) => Container(
    // height: 80,
    width:width ,
    child: Image.asset('assets/image/grass2.png', fit: BoxFit.fitWidth));
Widget grass3(width) => Container(
    // height: 80,
    width:width ,
    child: Image.asset('assets/image/grass3.png', fit: BoxFit.fitWidth));
Widget grass4(width) => Container(
    // height: 120,
    width:width ,
    child: Image.asset('assets/image/grass4.png', fit: BoxFit.fitWidth));
Widget tree3() => Container(
    height: 120,
    child: Image.asset('assets/image/tree3.png', fit: BoxFit.fitHeight));
Widget verySmallTreeR() => Container(
    height: 100,
    child:
        Image.asset('assets/image/verySmallTreeR.png', fit: BoxFit.fitHeight));
Widget verySmallTree() => Container(
    height: 100,
    child:
        Image.asset('assets/image/verySmallTree.png', fit: BoxFit.fitHeight));

///
Widget mount(width) => Container(
    // height: 180,
    width:width+ 5,
    child: Image.asset('assets/image/mountweb.png', fit: BoxFit.cover));
Widget birdDown() => Container(
    height: 220,
    child: Image.asset('assets/image/birdDown.png', fit: BoxFit.fitHeight));
Widget birdRight() => Container(
    height: 150,
    child: Image.asset('assets/image/birdRight.png', fit: BoxFit.fitHeight));
Widget birdLeft() => Container(
    height: 140,
    child: Image.asset('assets/image/birdLeft.png', fit: BoxFit.fitHeight));
Widget extraLargeTree() => Container(
    height: 160,
    child:
        Image.asset('assets/image/extraLargeTree.png', fit: BoxFit.fitHeight));
Widget bigTree2() => Container(
    height: 170,
    child: Image.asset('assets/image/bigTree2.png', fit: BoxFit.fitHeight));
Widget tree1() => Container(
    height: 150,
    child: Image.asset('assets/image/tree1.png', fit: BoxFit.fitHeight));
Widget f22(w) => Container(
    width: w,
    child: Image.asset('assets/image/f22.png', fit: BoxFit.fitHeight));
Widget moon() => Container(
    width: 30,
    child: Image.asset('assets/image/moon.png', fit: BoxFit.fitHeight));
