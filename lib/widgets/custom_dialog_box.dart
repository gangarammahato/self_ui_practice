import 'package:class_ui_projrct/common_widget/Custom_button.dart';
import 'package:class_ui_projrct/common_widget/custom_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({super.key});

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 5,),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.delete)),
            ),
              Text('Cart',
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff283148),
              ),
              ),
              
              Flexible(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index){
                    return const CustomCart();
                  }, 
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      height: 5,
                      color: Colors.yellow,
                    );
                  }, 
                  itemCount: 7),
              ),
              
      
              Align(
                alignment: Alignment.bottomRight,
                child: Text('Total',
                style: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff283148),
                ),
                ),
              ),
              Align(
                 alignment: Alignment.bottomRight,
                child: Text('\$1024',
                style: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFF5959),
                ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(),
              ),
          ],
        ),
      ),
    );
  }
}