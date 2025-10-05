import 'package:flutter/foundation.dart';

void myDebugPrint(Object? object) {
  if (kDebugMode) {
    debugPrint(object.toString());
  }
}
