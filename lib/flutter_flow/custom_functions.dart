import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime? firstDataOfMonth() {
  final now = DateTime.now();

  var firstDataOfMonth = DateTime(now.year, now.month, 1).toString();

  var dateParse = DateTime.parse(firstDataOfMonth);

  // var formattedDate = "${dateParse.year}-${dateParse.month}-${dateParse.day}";

  return dateParse;
}

DateTime? getLastMonth() {
  final now = DateTime.now();

  var firstDataOfMonth = DateTime(now.year, now.month - 1, 1).toString();

  var dateParse = DateTime.parse(firstDataOfMonth);

  // var formattedDate = "${dateParse.year}-${dateParse.month}-${dateParse.day}";

  return dateParse;
}

DateTime? getLastMonthCopy() {
  final now = DateTime.now();

  int lastday = DateTime(now.year, now.month - 1, 0).day;

  var firstDataOfMonth = DateTime(now.year, now.month - 1, lastday).toString();

  var dateParse = DateTime.parse(firstDataOfMonth);

  // var formattedDate = "${dateParse.year}-${dateParse.month}-${dateParse.day}";

  return dateParse;
}

bool? checkWeekend() {
  var weekend = false;
  final days = DateFormat('EEEE').format(DateTime.now());

  if (days == 'Saturday' || days == 'Sunday') {
    weekend = true;
  }

  return weekend;
}

String? concatName(String? name) {
  return name![0].toUpperCase();
}
