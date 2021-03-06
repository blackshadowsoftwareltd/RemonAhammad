import 'package:flutter/material.dart';
import 'package:remonahammad/provider/orientation_scroll.dart';
import 'package:provider/provider.dart';
class LandScapeBody extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (value) {
        context
            .read<OrientationScrollProvider>()
            .setLandScroll(value.metrics.pixels);
        return true;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            containers(400, Colors.transparent),
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
