import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remonahammad/Android/constant/size_config.dart';
import 'package:remonahammad/Web/home_screen.dart';

import 'package:provider/provider.dart';
import 'Android/home_screen.dart';
import 'provider/orientation_scroll.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.setHeightWidth(
        MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
    return kIsWeb
        ? WebHome()
        : OrientationBuilder(builder: (context, orientation) {
            orientation == Orientation.portrait
                ? context
                    .read<OrientationScrollProvider>()
                    .setInItOrientation(true)
                : context
                    .read<OrientationScrollProvider>()
                    .setInItOrientation(false);

            context.read<OrientationScrollProvider>().setInItScroll();

            return AndroidHome(
              zOrientation: orientation == Orientation.portrait,
            );
          });
  }
}
