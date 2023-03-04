import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';

class RiceCategoryScreen extends StatelessWidget {
  const RiceCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return Container(
      height: 102,
      decoration: BoxDecoration(
          color: green.withOpacity(0.6),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.r),
              topRight: Radius.circular(25.r))),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 8.0.h),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text('Fried Rice',
                    style: TextStyle(
                        color: white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        height: 2.sp)),
                Text(
                  '₦ 3,233',
                  style: TextStyle(
                      color: white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      height: 2.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            '2 chicken wings, 2 fried shrimps and coleslaw',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: white,
              fontSize: 16.sp,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
