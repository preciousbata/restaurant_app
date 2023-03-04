import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          enabled: true,
          hintText: 'Search',
          hintStyle: TextStyle(
              fontSize: 15.sp, fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 22.sp,
            color: black,
          ),
        ),
      ),
    );
  }
}
