// lib/core/utils/log.dart

import 'package:flutter/foundation.dart';

void logInfo(String message) {
  if (kDebugMode) {
    print('INFO: $message');
  }
}

void logError(String message) {
  if (kDebugMode) {
    print('ERROR: $message');
  }
}
