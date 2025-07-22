import 'package:advanced_sessions/core/di/dependancy_injection.dart';
import 'package:advanced_sessions/core/routing/app_router.dart';
import 'package:advanced_sessions/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
