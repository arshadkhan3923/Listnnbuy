import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'ablue_egba.dart';
import 'by_filtered.dart';

class ListOfCar extends StatelessWidget {
  const ListOfCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:

      Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                InkWell(
                  onTap: (){
                    Get.off(()=>const FilteredCarPage());
                  },
                  child:   const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.black,

                  ),
                ),
                  const SizedBox(
                    width: 95,
                  ),
                  Image.asset('assets/old-logo.png'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                    height: 10,
                  ),
              Expanded(
                child: TextFormField(

  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    prefixIcon: const Icon(
      Icons.search,
      size: 26,
      color: Colors.black,
    ),
    hintText: 'Search...',
    hintStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400),
    filled: true,
    fillColor: Colors.white,

  ),
),
               ),
          const SizedBox(width: 10,),
            const Icon(Icons.menu_outlined,size:30,),
                  const SizedBox(width: 10,)
                ],
              ),
              // const SizedBox(height: 10,),

              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(height: 106.0),
                  items: [1,2,3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            margin: const EdgeInsets.symmetric(horizontal: 10.0),
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                                color: Color(0xffF5ECBB),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Row(
                                     children:  const [
                                       Text('Sell ',style: TextStyle(
                                         fontSize: 18,
                                         fontWeight: FontWeight.w400,
                                         color: Colors.blue,
                                       ),
                                       ),
                          Text('your Car at',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),),
                                     ],
                                   ),
                                 Row(
                                   children: const [
                                     Text('your ',style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.black,
                                     ),),
                                     Text('Best',style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.blue,
                                     ),),
                                     Text('price',style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.black,
                                     ),),
                                   ],
                                 ),
                                    const Text('Details on every vehicle',style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),),

                                  ],
                                ),

                                Image.asset('assets/sell_carImage.png')
                              ],
                            )
                        );
                      },
                    );
                  }).toList(),
                )
              ),
              // SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child:
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 50.0,
                    autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                    ),
                    items: [1,2,3,4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            // width: 5,
                            margin: const EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color:  Color(0xffFFB9C8D4),
                            ),
                            child: Row(
                              children:  const [
                                SizedBox(width: 20,),
                              Text('Abule Egba',
                                        style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 100,),
                                    Icon(Icons.arrow_drop_down,size: 30,),

                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                children: const [
                  SizedBox(width: 25,),
                  Text('Shorts:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ],
              ),
              Expanded(
                child:GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  // physics: NeverScrollableScrollPhysics(),

                  children: [

                    Padding(padding: const EdgeInsets.only(left: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 135.50,
                              child: Container(
                                  height: 9.42,
                                  width: 32.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Benz ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 10,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('Mercedes - Benz Pickup',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/image_car_2.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$5000',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 85,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),

                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5,right: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 133.50,
                              child: Container(
                                  height: 9.42,
                                  width: 29.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Mini Flat ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 10,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('BMW X4 Pickup Truck',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/car_image_3.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$3800',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 85,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),



                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),

                    Padding(padding: const EdgeInsets.only(left: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 135.50,
                              child: Container(
                                  height: 9.42,
                                  width: 32.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Toyota ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 10,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('Toyota Lineup - Latest Models',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/car_image_4.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$2896,00',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 85,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),


                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5,right: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 130.50,
                              child: Container(
                                  height: 9.42,
                                  width: 32.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Toyota Car ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 25,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 8,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('2022 Toyota Highlander Hybrid',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/hero_image_car.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$94830',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 80,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),



                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),

                    Padding(padding: const EdgeInsets.only(left: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 135.30,
                              child: Container(
                                  height: 9.42,
                                  width: 32.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Ford ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 10,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('Ford 2013 focus ST | Ford focus 1, Ford',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/car_image_y.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$5000',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 85,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),



                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5,right: 10),
                      child:   Container(
                        height: 203,
                        width: 138,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 130.50,
                              child: Container(
                                  height: 9.42,
                                  width: 32.02,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:Radius.circular(5),
                                      topRight:Radius.circular(5),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('New',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 4,
                                      ),),
                                  )

                              ),
                            ),

                            Positioned(
                              top: 2,
                              left: 15,
                              child: Row(
                                children: const [
                                  // SizedBox(height: 40,width: 15,),
                                  Text('Benz ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Icon(Icons.language,size: 15, color: Color(0xff838EA1),),
                                  SizedBox(width: 10,),
                                  SizedBox(height: 40,),
                                  Text('Premium Plus Ad ',
                                    style: TextStyle(
                                      color: Color(0xff838EA1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const Positioned(
                              top:33,
                              left: 15,
                              child:  Text('Mercedes - Benz',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8,
                                  color: Colors.blue
                              ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 47,
                              child: Image.asset('assets/car_image_w5.png',width: 78.99,height: 72,),
                            ),
                            Positioned(
                              top: 120,
                              left: 15,
                              child: Row(
                                children:  [
                                  const Text('\$3800',
                                    style: TextStyle(
                                      color: Color(0xff3A456E),
                                      fontSize: 12,fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 85,),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.email_outlined,size: 8,),
                                      )
                                  ),
                                ],
                              ),
                            ),

                            // const Positioned(
                            //        // top: 50,
                            //   bottom: 50,
                            //        child: Divider(
                            //          color: Colors.redAccent, //color of divider
                            //          height: 5, //height spacing of divider
                            //          thickness: 3, //thickness of divider line
                            //          indent: 25, //spacing at the start of divider
                            //          endIndent: 25,)
                            //        ),

                            Positioned(
                                top: 155,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on_outlined,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Abule Egba',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                    SizedBox(width: 42,),
                                    Icon(Icons.alarm_rounded,size: 6,color: Color(0xff838EA1),),
                                    SizedBox(width: 4,),
                                    Text('Posted 15 Jan',
                                      style: TextStyle(
                                          color: Color(0xff838EA1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),


            ],
          ),
    );
  }
}
