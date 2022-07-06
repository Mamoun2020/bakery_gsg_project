import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class LatestProductsItem extends StatelessWidget {
  const LatestProductsItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);
  final String image;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 140.h,
      margin: EdgeInsets.all(
        8.0.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16.0.r,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            offset: const Offset(5, 0),
            color: Colors.black.withOpacity(
              0.1,
            ),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 100.w,
              height: 80.h,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Abubhabimedia',
                fontWeight: FontWeight.w500,
                color: ColorConst.purple_500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '$price',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Abubhabimedia',
                        fontWeight: FontWeight.w500,
                        color: ColorConst.purple_200,
                      ),
                    ),
                    Text(
                      '₪',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Abubhabimedia',
                        fontWeight: FontWeight.w500,
                        color: ColorConst.purple_200,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 21.w,
                  height: 21.h,
                  padding: const EdgeInsets.all(
                    4.0,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConst.purple_500,
                    borderRadius: BorderRadius.circular(
                      6.0.r,
                    ),
                  ),
                  child: Image.asset(
                    'assets/icons/buy.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
