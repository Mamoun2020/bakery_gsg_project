import 'package:bakery_gsg_project/view/screens/aboutus_screen/about_us_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../widgets/exit_app_widget.dart';
import '../screens/support_screen/support_screen.dart';

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
            leading: Image.asset('assets/icons/drawer/bakery.png'),
            title: Text('المخابز',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/points.png'),
            title: Text('نقاطي',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/cart.png'),
            title: Text('سلة المشتريات',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/delivery.png'),
            title: Text('ديلفري',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/trackdelivery.png'),
            title: Text('تتبع الطلبات',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/favourite.png'),
            title: Text('المفضلة',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          ListTile(
            leading: Image.asset('assets/icons/drawer/profile.png'),
            title: Text('حسابي',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
          ),
          //support
          ListTile(
            leading: Image.asset('assets/icons/drawer/support.png'),
            title: Text('الدعم الفني',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
            },
          ),
          //about us
          ListTile(
            leading: Image.asset('assets/icons/drawer/aboutus.png'),
            title: Text('نبذة عنا',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
            },
          ),
          //Logout
          ListTile(
            leading: Image.asset('assets/icons/drawer/out.png'),
            title: Text('تسجيل خروج',style: TextStyle(color: ColorConst.purple_200,fontSize: 15.sp,fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,),),
            onTap: (){
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return ExitAppWidget();
                  });
            },
          ),
        ],
      ),
    );
  }
}