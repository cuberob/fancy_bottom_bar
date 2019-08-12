import 'package:fancy_tab/fancy_tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fancy tab item with missing icon throws', () {
    expect(() => FancyTabItem(title: Text("No Icon!")), throwsAssertionError);
  });

  test('fancy tab item with missing title throws', () {
    expect(() => FancyTabItem(icon: Text("No Title!")), throwsAssertionError);
  });
}
