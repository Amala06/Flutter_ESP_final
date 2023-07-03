import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/all_item.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:my_app/Home.dart';
// import 'package:my_app/all_item.dart';

// class Swiper extends StatelessWidget {
//   const Swiper({super.key});

// @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Builder(builder: (context) => LiquidSwipe(pages: pages, slideIconWidget:Icon(Icons.arrow_back_ios))	),
//     );
//   }

// }final pages = [
//   Container(
//     child: Home(),
//   ),
//   Container(
//     child: AllItem(),
//   )

//  ];

class Swiper extends StatelessWidget {
  // const Swiper({super.key});
  final VoidCallback restartAppCallback;

  Swiper({required this.restartAppCallback});

@override
  Widget build(BuildContext context) {
   return Scaffold(
    body: PageView(
children: [
// ElevatedButton(
//             onPressed: () {
//               restartAppCallback();
//             },
//             child: Text('Restart App'),
//           ),

   Home(),
   AllItem(),
],
    ),
   );
  }

}