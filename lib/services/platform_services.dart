import 'package:flutter/material.dart';

class PlatFormServices extends StatelessWidget {
  final Widget? mobile, tablet, desktop, portraitWeb;

  const PlatFormServices(
      {this.mobile, this.tablet, this.desktop, this.portraitWeb});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 1024)
      return desktop!;
    else if (size.width >= 768 && tablet != null)
      return tablet!;
    else if (size.width < 361)
      return portraitWeb!;
    else
      return mobile!;
  }

  /// mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 767;

  /// mobile portrait vaiew
  static bool isPortraitWeb(BuildContext context) =>
      MediaQuery.of(context).size.width < 361;

  /// tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1023 &&
      MediaQuery.of(context).size.width >= 768;

  /// desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
}
