import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class ExitAppWidget extends StatelessWidget {
  const ExitAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('هل تريد الخروج من التطبيق',style: TextStyle(fontSize: 20.0,
          fontFamily: 'Abubhabimedia',fontWeight: FontWeight.w500,color: ColorConst.purple_200),),
      actions: [
        TextButton(
            onPressed: () {
             SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
            child: const Text('نعم',style: TextStyle(color:ColorConst.purple_200,fontFamily:'Abubhabimedia',
              fontSize: 17.0,fontWeight: FontWeight.w500,)),),
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(ColorConst.purple_500,),padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.w,horizontal: 48.w),),),
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('لا',style: TextStyle(color:Colors.white,fontFamily:'Abubhabimedia',
          fontSize: 18.0,fontWeight: FontWeight.w500,),),
        ),
      ],
    );
  }
}
