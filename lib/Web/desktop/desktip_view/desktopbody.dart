import 'package:flutter/material.dart';
import 'package:remonahammad/provider/orientation_scroll.dart';
import 'package:provider/provider.dart';

class DesktopBody extends StatelessWidget {
  // final int value;


  // PortraitBody({ required this.value}) ;

  @override
  Widget build(BuildContext context) {
    // context.read<OrientationScrollProvider>().setOrientation(true);


    return NotificationListener<ScrollNotification>(
      onNotification: (value) {
        context
            .read<OrientationScrollProvider>()
            .setDesktopScroll(value.metrics.pixels);
        return true;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            containers(600, Colors.transparent),
            containers(100, Colors.blue),
            containers(100, Colors.green),
            containers(100, Colors.red),
            containers(100, Colors.orangeAccent),
            containers(100, Colors.grey),
            containers(100, Colors.purple),
            containers(100, Colors.blue),
            containers(100, Colors.grey),
            containers(100, Colors.green),
            containers(100, Colors.red),
            containers(100, Colors.orangeAccent),
            containers(100, Colors.grey),
            containers(100, Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget containers(double v, Color c) =>
      Container(height: v, width: double.infinity, color: c);
}
