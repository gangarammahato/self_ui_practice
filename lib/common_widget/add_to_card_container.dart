import 'package:class_ui_projrct/common_widget/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCardContainer extends StatefulWidget {
  const AddToCardContainer({super.key});

  @override
  State<AddToCardContainer> createState() => _AddToCardContainerState();
}

class _AddToCardContainerState extends State<AddToCardContainer> {
  String dropdownvalue = 'Blue';   
  
  // List of items in our dropdown menu
  var items = [    
    'Blue',
    'Black',
    'White',
    'Red',
    'Yellow',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      color: const Color(0xff283148),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Quantity',
                style: TextStyle(
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFFFFFF),
                ),
                ),
                Text('Color',
                style: TextStyle(
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFFFFFF),
                ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: const Color(0xff283148),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text('1',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        
                        IconButton(
                          onPressed: (){},
                           icon: Text('-',
                           style: TextStyle(
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                           )),
                        
                        IconButton(
                          onPressed: (){},
                           icon: Text('+',
                           style: TextStyle(
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                           )),
                         
                        
                        
                
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: const Color(0xff283148),
                    ),
                    //color: Colors.green,
                    child: DropdownButtonFormField(
                         
                      // decoration: const InputDecoration(
                      //   //isCollapsed: true,
                      //   enabledBorder: InputBorder.none,
                      //       //filled: true,
                      //        //fillColor: Colors.greenAccent,
                        
                      // ),
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 30,),
                      items: items.map((String items) {
                  return DropdownMenuItem(
                    //enabled: true,
                    value: items,
                    child: Text(items,
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    ),
                  );
                }).toList(), 
                      onChanged:(String? newValue) { 
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}