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
    return Container(
      height: 505,
      width: ScreenSize.pWidth,
      color: Colors.blue[100],
      child: Stack(
        children: [Positioned(top: -value! * 0.05, child: sky())],
      ),
    );
  }
}
