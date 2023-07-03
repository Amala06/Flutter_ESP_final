import 'package:flutter/material.dart';
import 'package:my_app/data.dart';
import 'dart:math' as math;
import 'package:my_app/matrix_helper.dart';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

// import 'package:get/get.dart';
// import 'package:my_app/controller.dart';

// import 'package:my_app/server.dart';
import 'dart:async';
// import 'dart:math';
// import 'package:my_app/matrix_helper.dart';
import 'package:my_app/display_earth.dart';
import 'package:my_app/small_list.dart';
import 'dart:math';
import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:my_app/all_item.dart';
import 'package:my_app/controller.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/swiper.dart';


class AllItem extends StatelessWidget {
  // const AllItem({super.key});

//   @override
//   State<AllItem> createState() => _AllItemState();
// }

// class _AllItemState extends State<AllItem> {
//     MatrixHelper matrixHelper = MatrixHelper();
//   String updatedValue = '';
//    @override
//    void initState() {
//     super.initState();
//     startMatrixUpdates();
//   }
//     void startMatrixUpdates() {
//     //probably change this String stream to the incoming esp status
//     Stream<String> stringStream =
//         matrixHelper.generateNewStringsWithDelay(const Duration(seconds: 2));
//     stringStream.listen((value) {
//       setState(() {
//         matrixHelper.updateMatrixValues(value);
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
        
//         decoration:const  BoxDecoration(gradient:  LinearGradient(

//           colors : [
//               Color.fromRGBO(0, 0, 0, 1),
//               Color.fromRGBO(4, 27, 151, 1),
//             ],     begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             transform: GradientRotation(math.pi / 4),)),


//             child:Row(
//                 //  mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//              const Padding(
//          padding: EdgeInsets.only(top:23),
         
//                 child:Image(image: AssetImage('assets/earth.png',   ),width: 149,)
//               ),
          
//               Expanded(
//                 child: Padding(
//                 padding: const EdgeInsets.only(top:170),
//                   child: GridView.builder(
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2, // Number of columns
//                       ),
//                       itemCount: matrix.length, // Number of rows
//                       itemBuilder: (BuildContext context, int index) {
//                         List<String> rowData =matrixHelper.matrix[index]; // Get the row data
//                         String image = rowData[0]; // Image path
//                         String value = rowData[1]; // Value
//                         String updatedValue = rowData[2]; // Updated value
                
//                         return Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient:const LinearGradient(
//                   colors: [
//                     Color.fromRGBO(255, 255, 255, 0.5),
//                     Color.fromRGBO(255, 255, 255, 0.2),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   transform: GradientRotation(math.pi / 4),
//                             ),
//                           ),
//                           margin: const EdgeInsets.all(5),
//                           padding: const EdgeInsets.all(0),
//                           child: Column(
//                             // mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                   Image.asset(
//                     image,
//                     width: 70,
//                     height: 50,
//                   ),
//                   // const SizedBox(height: 10),
//                   Text(
//                     value,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 13,
//                     ),
//                   ),
//                   // const SizedBox(height: 5),
//                   Text(
//                     updatedValue,
//                     style:const  TextStyle(
//                       color: Colors.white,
//                       fontSize: 19,
//                       // fontWeight: FontWeight.bold
//                     ),
//                   ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                 ),),
              
//             ],),
//       ),
//     );
//   }
// }

// class _AllItemState extends State<AllItem> {
    late ServerController serverController = Get.put(ServerController());


//   @override
//   void initState() {
//     super.initState();
//     // startMatrixUpdates();
//     serverController.fetchData();
//   }

  // void startMatrixUpdates() {
  //   Stream<String> stringStream =
  //       matrixHelper.generateNewStringsWithDelay(const Duration(seconds: 2));
  //   stringStream.listen((value) {
  //     setState(() {
  //       matrixHelper.updateMatrixValues(value);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
       final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GetBuilder<ServerController>(builder: (controller) {
           if (ServerController.serverr.matrix.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(1, 19, 111, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(math.pi / 4),
          ),
        ),
        child: Stack(
          children: [
                   const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 120),
              child: Text(
                'SMART  BUILDING',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gidugu',
                  fontSize: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 90, left: 150),
              child: Text(
                'Living Area',
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Gidugu',
                  fontSize: 25,
                ),
              ),
            ),
             Positioned(
              top: screenHeight-599,
              child: Image(
                image: AssetImage('assets/earth.png'),
                width: 126,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 170,left:120),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                ),
               itemCount: controller.matrix.length,
                itemBuilder: (BuildContext context,  index) {
               
                   List<String?> rowData = ServerController.serverr.matrix[index];
                      String image = rowData[0] ?? "";
                      String value = rowData[1] ?? "";
                      String updatedValue = rowData[2] ?? "";

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        transform: GradientRotation(math.pi / 4),
                      ),
                    ),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          image,
                          width: 70,
                          height: 50,
                        ),
                        Text(
                          value,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          updatedValue,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          const  Positioned(
              bottom: 0,
        
              child: Image(
                image: AssetImage('assets/build.png'),
           
              ),
            ),
          ],
        ));
          }
      },)
      
      
      
   
    );
  }
}
