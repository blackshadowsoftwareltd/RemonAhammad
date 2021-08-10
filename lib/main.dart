import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remonahammad/wrapper.dart';

import 'provider/orientation_scroll.dart';
import 'provider/services_provider.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ServicesProvider>(
            create: (_) => ServicesProvider()),
        ChangeNotifierProvider<OrientationScrollProvider>(
            create: (_) => OrientationScrollProvider()),
      ],
      child: Wrapper(),
    );
  }
}
