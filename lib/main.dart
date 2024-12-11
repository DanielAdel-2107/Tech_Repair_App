import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tech_repair_app/app/my_app.dart';
import 'package:tech_repair_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
