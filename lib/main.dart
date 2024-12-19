import 'package:ClickToFood/core/app/app.dart';
import 'package:flutter/material.dart';

import 'core/app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(const MyApp());
}
