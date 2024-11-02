import 'package:flutter/material.dart';

// Extension for navigation on BuildContext
extension Navigation on BuildContext {

  // Method to pop the current screen
  void pop() {
    Navigator.pop(this);
  }

  // Method to push a new screen and remove all previous screens
  Future<void> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
          (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  // Method to push a named route
  Future<void> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  // Method to push and replace with a named route
  Future<void> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }
}
