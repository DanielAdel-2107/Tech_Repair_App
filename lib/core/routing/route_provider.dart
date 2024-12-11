import 'package:flutter/material.dart';

class RouteProvider with ChangeNotifier {
  bool _isConnected = false;

  bool get isConnected => _isConnected;
  set isConnected(bool value) {
    _isConnected = value;
    notifyListeners();
  }
}
