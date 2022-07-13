import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/texts.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        elevation: 0.0,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: ColorConst.purple_500,)),
        title: Text(
        TextConst.aboutUsTitle,
        style: TextStyle(
            color: ColorConst.purple_500,
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            fontFamily: 'Abubhabimedia'),
      ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:double.infinity,
                height: 155.h,
                decoration: BoxDecoration(color: ColorConst.purple_500,borderRadius: BorderRadius.circular(10.r),),
                child: Center(child: Image.asset('assets/images/logo.png'),),
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Text(TextConst.title,style: TextStyle(
                  fontFamily: 'Abubhabimedia',color: ColorConst.purple_500, fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
