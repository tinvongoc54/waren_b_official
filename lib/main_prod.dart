import 'package:warenb/firebase_options.dart';
import 'package:warenb/my_app.dart';
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
