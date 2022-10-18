import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? getDBId(
  String dbName,
  List<dynamic> dbMetaData,
) {
  // find id from dbMetaData based on dbName
  for (var item in dbMetaData) {
    if (item['name'] == dbName) return item['id'];
  }
  return null;
}

List<dynamic> getDBMetaData(List<dynamic> results) {
  // loop through results and output json with content, emoji and id
  var dbMetaData = [];
  for (var i = 0; i < results.length; i++) {
    if (results[i]['title'].length > 0) {
      dbMetaData.add({
        'id': results[i]['id'],
        'name': results[i]['title'][0]['text']['content'],
        'emoji': results[i]['icon'] != null ? results[i]['icon']['emoji'] : '📝'
      });
    }
  }

  return dbMetaData;
}
