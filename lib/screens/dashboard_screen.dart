import 'package:carousel_slider/carousel_slider.dart';
import 'package:class_ui_projrct/common_widget/iteams_details.dart';
import 'package:class_ui_projrct/common_widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
   int _current = 0;

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
         height: 1000,
         // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: const Color(0xff283148),
                  height: 175.h,
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  //width: 400,
                  //color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, right: 15, top: 15),
                    child: AppBar(
                      //scrolledUnderElevation: 4,
                      backgroundColor: Colors.transparent,
                      title: TextField(
                        
                  
                                    decoration: InputDecoration(
                    hintText:('iMac'),
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.all(0),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              
                        
                      ),
                      actions: [
                        Container(
                      
                          decoration: const BoxDecoration(
                                color: Color(0xffFF8F56),
                                //borderRadius: BorderRadius.all(Radius.circular(200)),
                  
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(Icons.store, color: Colors.white, size: 25,),
                             ),
                        ),
                      ],
                      
                    ),
                  ),
                  
                ), 
                ),
                Positioned(
                  top: 125,
                  child:Container(
                    height: 130.h,
                    //width: 300.w,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: List.generate(3, (index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                
                                                      borderRadius: BorderRadius.circular(16.0),
                                                      child: Image.asset("assets/images/Mask Group.png",
                                                      height: 130.h,
                                                      width: MediaQuery.of(context).size.width,
                                                      fit: BoxFit.cover,
                                                      
                                                      ),
                                                    ),
                            );
                          }),
                           carouselController: _controller, 
                          options: CarouselOptions(
                             height: 130,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        //onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason){
                          setState(() {
                            _current = index;
                          });
                        }
                          ),
                          ),
                      ],
                    ),
                  ),
                  ),
                  Positioned(
                    top: 260,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                     // height: 1000,
                      //height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        //mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CommonText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(3, (index) => const IteamsDetails()),
                          ),
                          const SizedBox(height: 15,),
                      
                           const CommonText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(3, (index) => const IteamsDetails()),
                          ),
                      
                          const SizedBox(height: 15,),
                      
                           const CommonText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(3, (index) => const IteamsDetails()),
                          )
                      
                        ],
                      ),
                    ),
                    ),
            ],
          ),
        ),
        
      ),
    );
  }
}