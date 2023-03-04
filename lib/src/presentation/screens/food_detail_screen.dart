import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/src/colors.dart';
import 'package:restaurant_app/src/presentation/food_categories/rice_category_screen.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(392.7, 803));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: green.shade600,
              size: 30,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/ricebg.jpg'),
              fit: BoxFit.cover,
            )),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.fromLTRB(
                    8.w, 12.h, 8.w, 0.w),
                child: const RiceCategoryScreen(),
              ),
              itemCount: 5,
            )),
      ]),
    );
  }
}
