import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConst.primaryColor,
      width: 334.w,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          DrawerHeader(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 40.r,
                  child: ClipOval(child: Image.asset('assets/images/profile.jpg',fit:BoxFit.cover,)),
                ),
                SizedBox(width: 8.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('مأمون كمال أبوصلاح',style: TextStyle(color: ColorConst.purple_500,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
                    Text('0592570714',style: TextStyle(color: ColorConst.purple_500,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
                  ],
                ),
              ],
            ),),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('المخابز',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('نقاطي',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('سلة المشتريات',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('ديلفري',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('تتبع الطلبات',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('المفضلة',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('حسابي',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('الدعم الفني',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('نبذة عنا',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: const Icon(Icons.bakery_dining,color: ColorConst.purple_100,),
            title: Text('تسجيل خروج',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
        ],
      ),
    );
  }
}