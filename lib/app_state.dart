import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _loggedInUserid = prefs.getString('ff_loggedInUserid') ?? _loggedInUserid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _currentUser;
  DocumentReference? get currentUser => _currentUser;
  set currentUser(DocumentReference? value) {
    _currentUser = value;
  }

  String _loggedInUserid = '';
  String get loggedInUserid => _loggedInUserid;
  set loggedInUserid(String value) {
    _loggedInUserid = value;
    prefs.setString('ff_loggedInUserid', value);
  }
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
