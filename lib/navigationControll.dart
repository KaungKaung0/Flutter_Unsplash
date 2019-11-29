import 'package:flutter/material.dart';

void navigation(context, index) {
  var routeName = "null";
  switch (index) {
    case 0:
      routeName = "/feed";
      break;
    case 1:
      routeName = "/saved";
      break;
  }

  bool isNewRouteSameAsCurrent = false;

  Navigator.popUntil(context, (route) {
    if (route.settings.name == routeName) {
      isNewRouteSameAsCurrent = true;
    }
    return true;
  });

  if (!isNewRouteSameAsCurrent) {
    Navigator.pushReplacementNamed(context, routeName);
  }
}
