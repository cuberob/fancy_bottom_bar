import 'package:fancy_tab/fancy_tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fancy tab item comparator equals', () {
    final hiItem = FancyTabItem(title: "Hi", icon: Icons.search);
    final anotherHiItem = FancyTabItem(title: "Hi", icon: Icons.search);
    expect(hiItem == anotherHiItem, true);
  });

  test('fancy tab item comparator with different name doesn\'t equal', () {
    final hiItem = FancyTabItem(title: "Hi", icon: Icons.search);
    final byeItem = FancyTabItem(title: "Bye", icon: Icons.search);
    expect(hiItem == byeItem, false);
  });

  test('fancy tab item comparator with different icon doesn\'t equal', () {
    final hiItem = FancyTabItem(title: "Hi", icon: Icons.search);
    final byeItem = FancyTabItem(title: "Hi", icon: Icons.security);
    expect(hiItem == byeItem, false);
  });

  test('fancy tab item with missing icon throws', () {
    expect(() => FancyTabItem(title: "Ok"), throwsAssertionError);
  });
}
