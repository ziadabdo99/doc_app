import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
          SizedBox(width: 10.w),
          Text(
          'Doc',
          style: TextStyle(
            fontSize: 36.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
          SizedBox(width: 5.w),
           SvgPicture.asset(
          colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          height: 30.h,
            allowDrawingOutsideViewBox: true,
          'assets/svg/doctor.svg'),
          SizedBox(width: 5.w),
           Text(
          'App',
          style: TextStyle(
            fontSize: 36.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
      ],
    );
  }
}