import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return Container(
      height: 100.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 15.w, top: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: green),
      child: Stack(
        children: [
          Positioned(
            right: 0.w,
            bottom: 10.h,
            child: Image(
              image: const AssetImage('assets/bg_2.jpg'),
              height: 100.h,
              width: 70.w,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Text(
              'Get 32% Promo',
              style: TextStyle(
                  color: white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  height: 2.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Positioned(
            bottom: 12,
            child: Container(
              height: 35.h,
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade600
                      .withOpacity(0.5)),
              child: SizedBox(
                child: Text(
                  'Buy Food',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      height: 2.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
