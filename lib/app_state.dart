import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _address1 = '';
  String get address1 => _address1;
  set address1(String _value) {
    _address1 = _value;
  }

  String _address2 = '';
  String get address2 => _address2;
  set address2(String _value) {
    _address2 = _value;
  }

  String _address3 = '';
  String get address3 => _address3;
  set address3(String _value) {
    _address3 = _value;
  }

  double _buycount = 0.0;
  double get buycount => _buycount;
  set buycount(double _value) {
    _buycount = _value;
  }

  String _buyname = '';
  String get buyname => _buyname;
  set buyname(String _value) {
    _buyname = _value;
  }

  String _buyplace = '';
  String get buyplace => _buyplace;
  set buyplace(String _value) {
    _buyplace = _value;
  }

  String _buypicture = '';
  String get buypicture => _buypicture;
  set buypicture(String _value) {
    _buypicture = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
