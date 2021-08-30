import 'package:flutter/cupertino.dart';

/// Implement logger as required
class MyLogger {
  Type type;

  MyLogger(this.type);

  void warn(String methodName, dynamic message, {dynamic stacktrace}) {
    debugPrint('WARN:: ${message?.toString()} \nStackTrace: ${stacktrace.toString()}');
  }

  void error(String methodName, dynamic error, {dynamic stacktrace}) {
    debugPrint('ERROR:: ${error?.toString()} \nStackTrace: ${stacktrace.toString()}');
  }

  void info(String methodName, dynamic message) {
    debugPrint('INFO:: ${message?.toString()}');
  }
}
