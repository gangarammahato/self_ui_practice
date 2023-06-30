import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffFF5959),
        borderRadius: BorderRadius.circular(10),

      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.shop, size: 18, color: Colors.white,),
          const SizedBox(width: 10,),
          Text('Add to Cart',
          style: TextStyle(
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),
          ),
        ],
      ),
    );
  }
}