import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';

import '../screens/food_detail_screen.dart';

class FoodCategoryListView extends StatelessWidget {
  const FoodCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const FoodDetailScreen()));
      },
      child: Container(
        height: 100.h,
        width: double.infinity,
        padding: EdgeInsets.only(left: 15.w, top: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: green),
        child: Stack(
          children: [
            Positioned(
              right: 5.w,
              bottom: 10.h,
              child: Image(
                image: const AssetImage('assets/bg_2.jpg'),
                height: 100.h,
                width: 70.w,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 8.0.w, top: 8.h),
              child: Text(
                'RICE',
                style: TextStyle(
                    color: white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    height: 2.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
