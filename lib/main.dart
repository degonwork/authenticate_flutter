import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in_getx/bindings/home_binding.dart';
import 'package:google_sign_in_getx/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  HomeBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Application',
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff141A31),
        primaryColorDark: const Color(0xff081029),
        scaffoldBackgroundColor: const Color(0xff141A31),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.yellow),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
            backgroundColor: MaterialStateProperty.all(Colors.yellow),
            padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
          ),
        ),
      ),
    );
  }
}
