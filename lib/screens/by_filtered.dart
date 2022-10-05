import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listnbuy_app/screens/list_of_car.dart';

class FilteredCarPage extends StatefulWidget {
  const FilteredCarPage({Key? key}) : super(key: key);

  @override
  _FilteredCarPageState createState() => _FilteredCarPageState();
}

class _FilteredCarPageState extends State<FilteredCarPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.black,
              ),
              const SizedBox(
                width: 90,
              ),
              Image.asset('assets/listnbuy_logo.png'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
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
          const SizedBox(width: 5,),
          const Icon(Icons.menu_outlined,size: 30,),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 46,
                width: 155,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue,width: 1),
                    color: const Color(0xffFFCED7DE)
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 15,),
                    Text('Abule Egba',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 25,),
                    Icon(Icons.arrow_drop_down,size: 30,)
                  ],
                ),
              ),
              Container(
                height: 46,
                width: 155,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue,width: 1),
                    color: const Color(0xffFFCED7DE)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [

                    Text('Cars',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 25,),
                    Icon(Icons.arrow_drop_down,size: 30,)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children: const [
              SizedBox(width: 25,),
              Text('Found 30 ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              ),
              Text('ads ',
              style: TextStyle(
                color: Colors.black26
              ),),
              Text('in Abuie Egba',
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
        children: [
          Padding(padding: const EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: (){
              Get.off(()=>const ListOfCar());
                },
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
                            Text('BMW ',
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
                        child:  Text('BMW BMW K1',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                            color: Colors.blue
                        ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 47,
                        child: Image.asset('assets/bike.png',width: 78.99,height: 72,),
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
                          ))
                    ],
                  ),
                ),
              )
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
                        Text('Mini Flat ',
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
                    child:  Text('Mini Flat in GodwinkLinks',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                        color: Colors.blue
                    ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 47,
                    child: Image.asset('assets/home_image.png',width: 78.99,height: 72,),
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
                      ),
                  ),
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
                    left: 136,
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
                            ),
                          ),
                        ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    left: 15,
                    child: Row(
                      children: const [
                        // SizedBox(height: 40,width: 15,),
                        Text('Headphone ',
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
                    child:  Text('White Solo Wireless',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                        color: Colors.blue
                    ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 47,
                    child: Image.asset('assets/headphone.png',width: 78.99,height: 72,),
                  ),
                  Positioned(
                    top: 120,
                    left: 15,
                    child: Row(
                      children:  [
                        const Text('\$28,00',
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
                            ),
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
                      )
                  ),
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
                    child: Image.asset('assets/car_image.png',width: 78.99,height: 72,),
                  ),
                  Positioned(
                    top: 120,
                    left: 15,
                    child: Row(
                      children:  [
                        const Text('\$24830',
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
                      ),
                  ),
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
                        Text('Property ',
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
                    child:  Text('Property Nigeria For Sell',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                        color: Colors.blue
                    ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 47,
                    child: Image.asset('assets/bank_image.png',width: 78.99,height: 72,),
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
                        Text('Laptop ',
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
                    child:  Text('ASUS L510 Ultra Thin Laptop 15.6 FHD',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 8,
                        color: Colors.blue
                    ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 47,
                    child: Image.asset('assets/laptop_image.png',width: 78.99,height: 72,),
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

        ],
        ),
        ),
          SizedBox(height: 50,),
          ],
          ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final _pages = <Widget>[
//      const FilteredCarPage(),
//      const ListOfCar(),
//   ];
//   var _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//
//         currentIndex: _selectedIndex,
//
//         onTap: (index){
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         items:  const [
//           BottomNavigationBarItem(
//             icon:  Icon(Icons.home_outlined,color: Colors.black,),
//             label: 'Home',backgroundColor: Colors.blueGrey
//
//
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star_border,color: Colors.black,),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart,color: Colors.black,),
//             label: 'Sell',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message,color: Colors.black,),
//             label: 'Message',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline,color: Colors.black,),
//             label: 'profile',backgroundColor: Colors.black
//
//
//           ),
//         ],
//       ),
//
//       body: _pages[_selectedIndex],
//     );
//   }
// }
