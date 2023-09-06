import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _camerastate = '';
  String get camerastate => _camerastate;
  set camerastate(String _value) {
    _camerastate = _value;
  }

  String _buyplace = '';
  String get buyplace => _buyplace;
  set buyplace(String _value) {
    _buyplace = _value;
  }

  Color _changecolor = Color(4289440684);
  Color get changecolor => _changecolor;
  set changecolor(Color _value) {
    _changecolor = _value;
  }

  Color _changecolor2 = Color(4289440684);
  Color get changecolor2 => _changecolor2;
  set changecolor2(Color _value) {
    _changecolor2 = _value;
  }

  Color _changecolor3 = Color(4289440684);
  Color get changecolor3 => _changecolor3;
  set changecolor3(Color _value) {
    _changecolor3 = _value;
  }

  Color _changecolor4 = Color(4289440684);
  Color get changecolor4 => _changecolor4;
  set changecolor4(Color _value) {
    _changecolor4 = _value;
  }

  Color _changecolor5 = Color(4289440684);
  Color get changecolor5 => _changecolor5;
  set changecolor5(Color _value) {
    _changecolor5 = _value;
  }

  Color _changecolor6 = Color(4289440684);
  Color get changecolor6 => _changecolor6;
  set changecolor6(Color _value) {
    _changecolor6 = _value;
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

  String _buypicture = '';
  String get buypicture => _buypicture;
  set buypicture(String _value) {
    _buypicture = _value;
  }

  String _namestate = '';
  String get namestate => _namestate;
  set namestate(String _value) {
    _namestate = _value;
  }

  double _pricestate = 0.0;
  double get pricestate => _pricestate;
  set pricestate(double _value) {
    _pricestate = _value;
  }

  double _amountstate = 0.0;
  double get amountstate => _amountstate;
  set amountstate(double _value) {
    _amountstate = _value;
  }

  String _changeplace = '';
  String get changeplace => _changeplace;
  set changeplace(String _value) {
    _changeplace = _value;
  }

  Color _placecolor1 = Color(4283917164);
  Color get placecolor1 => _placecolor1;
  set placecolor1(Color _value) {
    _placecolor1 = _value;
  }

  Color _placecolor2 = Color(4283917164);
  Color get placecolor2 => _placecolor2;
  set placecolor2(Color _value) {
    _placecolor2 = _value;
  }

  Color _placecolor3 = Color(4283917164);
  Color get placecolor3 => _placecolor3;
  set placecolor3(Color _value) {
    _placecolor3 = _value;
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
