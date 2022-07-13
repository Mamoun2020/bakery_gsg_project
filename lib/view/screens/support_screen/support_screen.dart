import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/colors.dart';
import '../../../constants/texts.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: ColorConst.primaryColor,
        elevation: 0.0,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios,color: ColorConst.purple_500,)),
        title: Text(
          TextConst.supportTitle,
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
          child: Column(children: [
            Center(child: Lottie.asset('assets/anim/support.json',height: 200.h)),
          ],
          ),
        ),
      ),
    );
  }
}
