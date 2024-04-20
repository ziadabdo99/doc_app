import 'package:flutter/material.dart';
import 'package:forfun/core/routes/app_router.dart';
import 'package:forfun/doco_app.dart';

void main() {
  runApp( DocoApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
    );
  }
}

