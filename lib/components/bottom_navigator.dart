// import 'package:flutter/material.dart';

//  Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       color: Colors.black87,
//       //decoration: BoxDecoration(color: Theme.of(context).primaryColor),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             enableFeedback: true,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 0;
//               });
//             },
//             icon: pageIndex == 0
//                 ? const Icon(
//                     Icons.home_filled,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.home_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: true,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 1;
//               });
//             },
//             icon: pageIndex == 1
//                 ? const Icon(
//                     Icons.work_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.work_outline_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: true,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 2;
//               });
//             },
//             icon: pageIndex == 2
//                 ? const Icon(
//                     Icons.widgets_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.widgets_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: true,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 3;
//               });
//             },
//             icon: pageIndex == 3
//                 ? const Icon(
//                     Icons.qr_code_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.qr_code_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 4;
//               });
//             },
//             icon: pageIndex == 4
//                 ? const Icon(
//                     Icons.person_rounded,
//                     color: Colors.blue,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.person_outline_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }