import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/data/models/user_model_sp.dart';
import 'package:payuung_pribadi/utils/error/error_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class SharedPreferencesDs {
  bool getStatusFirstTime();

  bool getStatusLogin();

  Future<void> setUserId(int userId);

  int getUserId();

  Future<void> setLogOut();
}


const _userIdKey = "USER_ID_KEY";
const _firstTimeKey = "FIRST_TIME_KEY";

class SharedPreferencesDsImpl implements SharedPreferencesDs {
  final SharedPreferences _sharedPreferences;
  SharedPreferencesDsImpl(this._sharedPreferences);

  @override
  bool getStatusFirstTime()  {
    final result = _sharedPreferences.getBool(_firstTimeKey) ?? true;
    if (result) {
      _sharedPreferences.setBool(_firstTimeKey, false);
      return true;
    }
    return false;
  }

  @override
  bool getStatusLogin() {
    final userDataStr = _sharedPreferences.getInt(_userIdKey);
    if (userDataStr != null) {
      return true;
    }
    return false;
  }

  @override
  int getUserId()  {
    final userId = _sharedPreferences.getInt(_userIdKey);
    if(userId != null){
      return userId;
    }
    throw LocalException(message: "user id not found");
  }

  @override
  Future<void> setUserId(int userId) {
    return _sharedPreferences.setInt(
      _userIdKey,
      userId,
    );
  }

  @override
  Future<void> setLogOut() {
    return _sharedPreferences.clear();
  }
}