import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprout/core/routes/app_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xffF4F6FA),
  ));
  runApp(MyApp(approuter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.approuter});
  final AppRouter approuter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: approuter.generateRoute,
        theme: ThemeData(fontFamily: "Urbanist"),
      ),
    );
  }
}
