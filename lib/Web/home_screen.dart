import 'package:flutter/material.dart';
import 'package:remonahammad/Android/landscape_components/landscape_body.dart';
import 'package:remonahammad/Android/landscape_components/sky_background/landscape_skybackground.dart';
import 'package:remonahammad/Android/portrait_components/portrait_body.dart';
import 'package:remonahammad/Android/portrait_components/skybackground/portait_skybackground.dart';
import 'package:remonahammad/Web/desktop/desktip_view/desktopbody.dart';
import 'package:remonahammad/Web/desktop/desktip_view/skybackground/skybackgrounddesk.dart'; 
import 'package:remonahammad/services/platform_services.dart';
 

class WebHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatFormServices.isMobile(context)
        ? Scaffold(
            body: Stack(children: [
            PlatFormServices.isPortraitWeb(context)
                ? PortraitSkyBackground()
                : LandscapeSkyBackground(),
            PlatFormServices.isPortraitWeb(context)
                ? PortraitBody()
                : LandScapeBody()
          ]))

        ///
        : Scaffold(
            body: Stack(children: [
            // PlatFormServices.isDesktop(context) ? 
                SkyBackgroundDesktop(),
                // : SkyBackgroundTab(),
            // PlatFormServices.isDesktop(context) ?
             DesktopBody()
              // : TabBody()
          ]));
  }
}
