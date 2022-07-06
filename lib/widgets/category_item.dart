import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 49.w,
              height: 49.h,
              margin: EdgeInsets.all(12.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  25.r,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(0, 3),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            Container(
              width: 39.w,
              height: 39.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.r,
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Abubhabimedia',
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: ColorConst.purple_500),
        ),
      ],
    );
  }
}
