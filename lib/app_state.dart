import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _addToFavourite = prefs.getBool('ff_addToFavourite') ?? _addToFavourite;
    });
    _safeInit(() {
      _requestPremium = prefs.getBool('ff_requestPremium') ?? _requestPremium;
    });
    _safeInit(() {
      _cancelPremium = prefs.getBool('ff_cancelPremium') ?? _cancelPremium;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  bool _addToFavourite = false;
  bool get addToFavourite => _addToFavourite;
  set addToFavourite(bool _value) {
    _addToFavourite = _value;
    prefs.setBool('ff_addToFavourite', _value);
  }

  bool _requestPremium = false;
  bool get requestPremium => _requestPremium;
  set requestPremium(bool _value) {
    _requestPremium = _value;
    prefs.setBool('ff_requestPremium', _value);
  }

  bool _cancelPremium = false;
  bool get cancelPremium => _cancelPremium;
  set cancelPremium(bool _value) {
    _cancelPremium = _value;
    prefs.setBool('ff_cancelPremium', _value);
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
