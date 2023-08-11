import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_blog/provider/auth_provider.dart';
import 'package:news_blog/screens/pages/splash_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
// import 'package:news_blog/screens/pages/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SplashScreen(),
      ),
    );
  }
}
