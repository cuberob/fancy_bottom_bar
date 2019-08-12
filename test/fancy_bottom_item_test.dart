import 'package:fancy_bottom_bar/fancy_bottom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fancy tab item with missing icon throws', () {
    expect(() => FancyBottomItem(title: Text("No Icon!")), throwsAssertionError);
  });

  test('fancy tab item with missing title throws', () {
    expect(() => FancyBottomItem(icon: Text("No Title!")), throwsAssertionError);
  });
}
