import 'package:flutter/material.dart';
import 'package:remonahammad/Android/landscape_components/landscape_body.dart';
import 'package:remonahammad/Android/landscape_components/sky_background/landscape_skybackground.dart';
import 'package:remonahammad/Android/portrait_components/skybackground/portait_skybackground.dart';
import 'package:remonahammad/Android/portrait_components/portrait_body.dart';

class AndroidHome extends StatelessWidget {
  final bool zOrientation;

  const AndroidHome({Key? key, required this.zOrientation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(zOrientation);

    return Scaffold(
        body: Stack(
      children: [
        zOrientation ? PortraitSkyBackground() : LandscapeSkyBackground(),
        zOrientation ? PortraitBody() : LandScapeBody(),
      ],
    ));
  } 
}
