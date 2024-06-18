import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forfun/features/onBoarding/ui/widgets/button.dart';
import 'package:forfun/features/onBoarding/ui/widgets/logoWidget.dart';
import 'package:forfun/features/onBoarding/ui/widgets/onBoardingPic.dart';
import 'package:forfun/features/onBoarding/ui/widgets/textWidget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(20.sp),
            child:  Column(
            children: [
              LogoWidget(),
              SizedBox(height: 50.h),
              OnBoardingPic(),
              SizedBox(height: 50.h),
              TextWidget(),
              SizedBox(height: 60.h),
              const Button()
             
            ],
                    ),
          ),
      )
      ),
    );
  }
}



