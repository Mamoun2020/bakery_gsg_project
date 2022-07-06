import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class MostOrderedProductsItem extends StatelessWidget {
  const MostOrderedProductsItem({
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
      width: 155.w,
      height: 180.h,
      margin: EdgeInsets.all(
        8.0.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          5.0.r,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            offset: const Offset(0, 2),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: Image.asset(
              image,
              width: 125.w,
              height: 100.h,
            )),
            Text(
              name,
              style: TextStyle(
                fontSize: 14.sp,
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
                        fontSize: 14.sp,
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
                  width: 28.w,
                  height: 28.h,
                  padding: EdgeInsets.all(
                    4.0.w,
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
