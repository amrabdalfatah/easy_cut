import 'package:easycut_business/app.dart';
import 'package:easycut_business/core/services/services.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const EasyCutBusiness());
}
