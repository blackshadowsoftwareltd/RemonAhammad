import 'package:flutter/cupertino.dart';

class OrientationScrollProvider extends ChangeNotifier {
  bool? _isPortrait;

  ///
  double _portraitScroll = 0;
  double _landScapeScroll = 0;
  double _tabScroll = 0;
  double _desktopScroll = 0;
 

  ///
  bool? get isPortrait => _isPortrait;

  ///
  double get portScroll => _portraitScroll;
  double get landScroll => _landScapeScroll;
  double get tabScroll => _tabScroll;
  double get desktopScroll => _desktopScroll; 

  void setInItOrientation(bool state) {
    if (_isPortrait == null) {
      _isPortrait = state;
      // print(isPortrait);
    }
  }

  void setOrientation(bool state) {
    _isPortrait = state;
    notifyListeners();
  }

  void setInItScroll() {
    _portraitScroll = 0;
    _landScapeScroll = 0;
  }

  void setPortScroll(value) {
    _portraitScroll = value;
    notifyListeners();
  }

  void setLandScroll(value) {
    _landScapeScroll = value;
    notifyListeners();
  }

  void setTabScroll(value) {
    _tabScroll = value;
    notifyListeners();
  }

  void setDesktopScroll(value) {
    _desktopScroll = value;
    notifyListeners();
  }

 
}
