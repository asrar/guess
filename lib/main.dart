import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:guessgame/Joining/Joining.dart';
import 'package:provider/provider.dart';

import 'Provider/count_provider.dart';
import 'SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 930),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {

        return MultiProvider(
          providers: [
            ChangeNotifierProvider<CountProvider>(
              create: (_) => CountProvider(),
            ),
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        );

        return GetMaterialApp(
          // theme: ThemeData(
          //   useMaterial3: true
          // ),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
