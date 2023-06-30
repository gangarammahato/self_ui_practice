import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCart extends StatefulWidget {
  const CustomCart({super.key});

  @override
  State<CustomCart> createState() => _CustomCartState();
}

class _CustomCartState extends State<CustomCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("assets/images/image.png",
            height: 60.h,
            width: 80.w,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Men's Shoes",
              style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff283148),
              ),
              ),
              Row(
                children: [
                  Text('\$102',
                  style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffFF5959),
              ),
                  
                  ),
                  const SizedBox(width: 5,),
                  // Icon(Icons.visibility),
                  Text('*',
                  style: TextStyle(
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff283148),
              ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    width: 120.w,
                    height: 30.h,
                    //padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5,),
                        Text('2',
                  style: TextStyle(
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff283148),
                            ),
                            textAlign: TextAlign.center,
                  
                  ),
                  const SizedBox(width: 5,),
                        IconButton(onPressed: (){}, 
                         icon:
                         
                        
                    
                         
                  
                  Text('-',
                  style: TextStyle(
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff283148),
                            ),
                            textAlign: TextAlign.center,
                  ),
                         ),
                  
                        IconButton(onPressed: (){}, 
                        icon: const Icon(Icons.add, size: 20, color: Color(0xff283148),)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text('=',
                  style: TextStyle(
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff283148),
                            ),
                            textAlign: TextAlign.center,
                  ),
                   const SizedBox(width: 5,),
                  Text('\$102',
                  style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffFF5959),
              ),
                  ),
                ],
              ),
              Text("\$120",
              style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff141414),
                decoration: TextDecoration.lineThrough,
              ),
              
              ),
              


            ],
          ),
       
        ],
      ),
    );
  }
}