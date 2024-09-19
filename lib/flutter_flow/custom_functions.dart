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
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime? firstDataOfMonth() {
  final now = DateTime.now();

  var firstDataOfMonth = DateTime(now.year, now.month, 1).toString();

  var dateParse = DateTime.parse(firstDataOfMonth);

  // var formattedDate = "${dateParse.year}-${dateParse.month}-${dateParse.day}";

  return dateParse;
}

double calcVoucherDiscAmount(
  double total,
  double discPercent,
) {
  return total * discPercent / 100;
}

double calcVoucherReset(
  double total,
  double discPercent,
) {
  return total = total / (1 - discPercent / 100);
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

DateTime concatDated(
  String dateInput,
  String timeInput,
) {
  String startTime = timeInput.split('-')[0].trim();
  String dateTimeString = '$dateInput $startTime PM';

  DateFormat dateFormat = DateFormat('yyyy-MM-dd hh.mm');
  DateTime dateTime = dateFormat.parse(dateTimeString);

  return dateTime;
}

String castDatetoStr(DateTime dated) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(dated);
  return formattedDate;
}

double calcVoucher(
  double total,
  double discPercent,
) {
  return total - (total * discPercent / 100);
}

DateTime converttoSG(DateTime theTime) {
  DateTime newTimestamp = theTime.subtract(Duration(hours: 6));

  return newTimestamp;
}
