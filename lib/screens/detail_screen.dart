import 'package:class_ui_projrct/common_widget/add_to_card_container.dart';
import 'package:class_ui_projrct/widgets/custom_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset("assets/images/MaskGroup1.png",
                height: 340.h,
                width: MediaQuery.of(context).size.height,
                //fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('gdgfdgfcdgf'),
                      const Text('gdgfdgfcdgf'),
                      const Text('gdgfdgfcdgf'),
                      const Text('gdgfdgfcdgf'),
                      const Text('gdgfdgfcdgf'),
                      const Text('gdgfdgfcdgf'),
                      Text('\$250 USD',
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFF5959),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ),
                  Text("Adidas Men's Soccer Tiro 17 Training Pants",
                  style: TextStyle(
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff283148),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  ),
                  Text('By: Adidas',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff141414),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ),
                  Text("'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaUt enim ad minim veniam, quisdolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff283148),
                  ),
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  ),
                    ],
                  ),
                ),
                
              ],
              
            ),
          ),
          const Positioned(
            bottom: 0.0,
            left: 0,
            right: 0,
            child: AddToCardContainer(),
            ),
        
            Positioned(
              bottom: 180,
              right: 15,
              child: Material(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffFF8F56),
                          elevation: 5,
                          child: IconButton(
                            onPressed: (){
                             showDialog<void>(
                                    context: context,
                                  barrierDismissible: false, 
                                  
                                 builder: (BuildContext context) {
                                return const CustomDialogBox();
                                 },
                              );
                              
                            },
                             icon: const Icon(Icons.store, size: 25, color: Colors.white,)),
                        )
              ),
              Positioned(
              bottom: 200,
              right: 16,
              child: 
                 Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: const BoxDecoration(
                    color: Color(0xff283148),
                    shape: BoxShape.circle,
        
                  ),
                   child: Text('2',
                   style: TextStyle(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                   ),
                   textAlign: TextAlign.center,
                   ),
                 ),
              ),
              Positioned(
                top: 300,
                bottom: 350,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          elevation: 5,
                          child: IconButton(
                            onPressed: (){},
                             icon: const Icon(Icons.favorite, size: 25, color: Color(0xffFF5959),)),
                        ),
                        const SizedBox(width: 5,),
                        Material(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          elevation: 5,
                          child: IconButton(
                            onPressed: (){},
                             icon: const Icon(Icons.share, size: 25, color: Color(0xff283148))),
                        )
        
                  ],
                )
                ),
          
                 
        ],
      ),
      
    
    );
  }
}