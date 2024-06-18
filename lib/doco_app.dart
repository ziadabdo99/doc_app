import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forfun/core/routes/app_router.dart';
import 'package:forfun/core/routes/routes.dart';
import 'package:forfun/core/theme/MyColors.dart';

class DocoApp extends StatelessWidget {
  final AppRouter appRouter ;
   const DocoApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: MyColors.mainGreen,
          ),
          initialRoute: Routes.onBoarding,
          onGenerateRoute: appRouter.generateRoute,
        ),
    );
  }
}