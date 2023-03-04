import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';

import '../widgets/discount_banner.dart';
import '../widgets/food_category_listview.dart';
import '../widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: green,
                  ),
                  Container(
                    height: 30.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: black),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              const DiscountBanner(),
              SizedBox(
                height: 22.h,
              ),
              const SearchBar(),
              SizedBox(
                height: 22.h,
              ),
              Center(
                child: Text(
                  'MENU',
                  style: TextStyle(
                      color: black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                      height: 2.sp),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              const FoodCategoryListView()
            ],
          ),
        ),
      ),
    );
  }
}
