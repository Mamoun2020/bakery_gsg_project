import 'package:bakery_gsg_project/constants/texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../data/category_data.dart';
import '../../../data/latest_products_data.dart';
import '../../../data/most_products_data.dart';
import '../../../data/wallpaper_data.dart';
import '../../../widgets/category_item.dart';
import '../../../widgets/latest_products_item.dart';
import '../../../widgets/most_ordered_products_item.dart';
import '../../../widgets/wallpaper_item.dart';
import '../../drawer/menu_drawer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        elevation: 0.0,
        leading: InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/icons/menu.png',
              color: ColorConst.purple_500,
            )),
        title: Text(
          TextConst.homeTitle,
          style: TextStyle(
              color: ColorConst.purple_500,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              fontFamily: 'Abubhabimedia'),
        ),
        actions: [
          Image.asset(
            'assets/icons/search.png',
          ),
        ],
      ),
      drawer: MenuDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            height: 145.h,
            child: CarouselSlider.builder(
              itemBuilder: (BuildContext context, int index, int realIndex) =>
                  WallpaperItem(
                image: wallpapers[index].image!,
              ),
              itemCount: wallpapers.length,
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 120.h,
            padding: EdgeInsetsDirectional.only(
              start: 8.0.w,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) => CategoryItem(
                image: categories[index].image!,
                title: categories[index].title!,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('أحدث المنتجات',
                    style: TextStyle(
                      fontFamily: 'Abubhabimedia',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: ColorConst.purple_500,
                    )),
                Text('عرض الكل',
                    style: TextStyle(
                      fontFamily: 'Abubhabimedia',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: ColorConst.purple_200,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 160.h,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) => LatestProductsItem(
                image: latestProducts[index].image!,
                name: latestProducts[index].name!,
                price: latestProducts[index].price!,
              ),
              itemCount: latestProducts.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('المنتجات الأكثر طلبا',
                    style: TextStyle(
                      fontFamily: 'Abubhabimedia',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: ColorConst.purple_500,
                    )),
                Text('عرض الكل',
                    style: TextStyle(
                      fontFamily: 'Abubhabimedia',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: ColorConst.purple_200,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => MostOrderedProductsItem(
                image: mostProducts[index].image!,
                name: mostProducts[index].name!,
                price: mostProducts[index].price!,
              ),
              itemCount: mostProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


