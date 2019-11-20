import 'package:flutter/material.dart';

class IsViewClass {
  static List<bool> isViews = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  static isViewSetter(int number, bool val) {
    isViews[number] = val;
  }

  static bool isViewGetter(int number) {
    return isViews[number];
  }
}
