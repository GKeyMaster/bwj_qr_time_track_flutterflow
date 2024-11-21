import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int getTimespan(
  DateTime stopTime,
  int timespan,
) {
  DateTime currentTime = DateTime.now();
  Duration difference = currentTime.difference(stopTime);
  return difference.inMilliseconds + timespan;
}

int getMins(int milsec) {
  return milsec ~/ 60000;
}
