import 'package:base_flaver/firebase_options.dart';
import 'package:base_flaver/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'app_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp(appConfig: AppConfig(appName: "prod", flavor: "prod")));
}
