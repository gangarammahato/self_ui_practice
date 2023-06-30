import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IteamsDetails extends StatelessWidget {
  const IteamsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 140.h,
      width: 105.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/image 2.png",
              height: 105.0.h,
              width: 105.0.w,
              fit: BoxFit.cover,
              //color: Colors.transparent,
              
              
            ),
          ),
          // ),
          const SizedBox(height: 8,),
          RichText(
            text:  TextSpan(
              text: "\$1205644",
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffFF5959)
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "    \$150",
                  style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff141414)
              ),
                )
              ]
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            ),
            Text('T-shirt smart',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff283148),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            )
        ],
      ),
    );
  }
}