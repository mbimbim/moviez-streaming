import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_streaming/Model/Json1.dart';

class JsonData {
  List data = [];
  void getData() {
    final jsonData =
        '[{ "name": "Pizza da Mario", "cuisine": "Italian" },{ "name": "Pizza da Mario", "cuisine": "Italian" },{ "name": "Pizza da Mario", "cuisine": "Italian" }]';
// 2. decode the json
    final parsedJson = jsonDecode(jsonData);

    data = parsedJson;
// 3. print the type and value
    print('ssssss ${parsedJson.runtimeType}');
  }
}
