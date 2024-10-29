import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_notes/bindings/splash_binding.dart';
import 'package:my_notes/firebase_options.dart';
import 'package:my_notes/page_routes/get_pages.dart';
import 'package:my_notes/page_routes/page_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pages,
      initialRoute: Routes.home,
      initialBinding: SplashBinding(),
    );
  }
}
