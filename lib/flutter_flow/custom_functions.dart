import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? gradeCalculator(int? gradeNum) {
  // ompute letter grades (A, B, C, D, F) based on an integer score (0-100). dd input validation to ensure the user has entered a valid score (0-100). If the user did not enter a valid score, display an error message (e.g. “Not a number” OR “out of range”).
  if (gradeNum == null) {
    return "Not a number";
  }

  if (gradeNum < 0 || gradeNum > 100) {
    return "Out of range";
  }

  if (gradeNum >= 90) {
    return 'A';
  } else if (gradeNum >= 80) {
    return 'B';
  } else if (gradeNum >= 70) {
    return 'C';
  } else if (gradeNum >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}
