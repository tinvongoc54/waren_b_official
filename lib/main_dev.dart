import 'package:base_flaver/app_config.dart';
import 'package:base_flaver/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'my_app.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp(appConfig: AppConfig(appName: "DEV", flavor: "dev")));
}
