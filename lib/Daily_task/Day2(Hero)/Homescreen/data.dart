// Container(
//   margin: const EdgeInsets.symmetric(horizontal: 11),
//   padding: const EdgeInsets.symmetric(horizontal: 15),
//   decoration: const BoxDecoration(
//       color: Color(0xFF1F222A),
//       borderRadius: BorderRadius.all(Radius.circular(20))),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       const Icon(
//         Icons.search,
//         color: Colors.grey,
//       ),
//       const Text(
//         'Search',
//         style: TextStyle(
//           color: Colors.grey,
//           fontSize: 18,
//         ),
//       ),
//       SizedBox(
//         height: height * 0.07,
//         width: width * 0.5,
//       ),
//       const Icon(
//         Icons.menu,
//         color: Colors.grey,
//       ),
//     ],
//   ),
// ),
// Container(
//   margin: const EdgeInsets.symmetric(vertical: 25),
//   padding: const EdgeInsets.symmetric(horizontal: 20),
//   child: const Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         'Special Offers',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 20,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       Text(
//         'See All',
//         style: TextStyle(
//             color: Colors.white,
//             fontSize: 17,
//             fontWeight: FontWeight.w500),
//       ),
//     ],
//   ),
// ),
// Container(
//   margin: const EdgeInsets.symmetric(horizontal: 15),
//   height: height * 0.21,
//   width: width,
//   decoration: BoxDecoration(
//       color: const Color(0xFF35383F),
//       borderRadius: BorderRadius.circular(30)),
//   child: Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 25, vertical: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   '25%',
//                   style: GoogleFonts.poppins(
//                     textStyle: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 Text(
//                   "Today's Special!",
//                   style: GoogleFonts.poppins(
//                     textStyle: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 const SizedBox.square(
//                   dimension: 10,
//                 ),
//                 Text(
//                     "Get discount for every\norder.only valid for today",
//                     softWrap: true,
//                     style: GoogleFonts.poppins(
//                       textStyle: const TextStyle(
//                         color: Colors.white70,
//                         fontSize: 11,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 10),
//             height: height * 0.2,
//             width: width * 0.3,
//             // color: Colors.blue,
//             child: Image.asset('assets/images/sofa.png'),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),
// Container(
//   margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: List.generate(
//         icon1.length,
//             (index) => CategoriesBox(
//             icon1[index]['text'], icon1[index]['icons'])),
//   ),
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: List.generate(
//       icon2.length,
//           (index) => CategoriesBox(
//           icon2[index]['text'], icon2[index]['icons'])),
// ),


















//
// List r1 = [
//   {
//     'img' : 'assets/images/chair.png',
//     'text' : 'Royal Wooden',
//     'rate' : '4.7',
//     'sale' : '6,686 sold',
//     'price' : '115.25',
//     'quantity' : 1,
//     'like' : true,
//   },
//   {
//     'img' : 'assets/images/chair2.png',
//     'text' : 'Royal Combo',
//     'rate' : '4.8',
//     'sale' : '6,635 sold',
//     'price' : '125.26',
//     'quantity' : 1,
//     'like' : true,
//   }
// ];
//
// List r2 = [
//   {
//     'img' : 'assets/images/3sofa.png',
//     'text' : 'table + 2Chair',
//     'rate' : '4.8',
//     'sale' : '4,866 sold',
//     'price' : '100.29',
//     'quantity' : 1,
//     'like' : true,
//   },
//   {
//     'img' : 'assets/images/table.png',
//     'text' : 'Royal dinning',
//     'rate' : '4.8',
//     'sale' : '6,966 sold',
//     'price' : '130.5',
//     'quantity' : 1,
//     'like' : true,
//   }
// ];
//
// List r3 = [
//   {
//     'img' : 'assets/images/lamp.png',
//     'text' : 'Premium lamp',
//     'rate' : '4.7',
//     'sale' : '7,652 sold',
//     'price' : '90',
//     'quantity' : 1,
//     'like' : true,
//   },
//   {
//     'img' : 'assets/images/sofa3.png',
//     'text' : 'Make-up lamp',
//     'rate' : '4.8',
//     'sale' : '9,826 sold',
//     'price' : '80.26',
//     'quantity' : 1,
//     'like' : true,
//   }
// ];
//
// List r4 = [
//   {
//     'img' : 'assets/images/lamp3.png',
//     'text' : 'Simple Lamp',
//     'rate' : '4.3',
//     'sale' : '10,006 sold',
//     'price' : '15.2',
//     'quantity' : 1,
//     'like' : true,
//   },
//   {
//     'img' : 'assets/images/vase.png',
//     'text' : 'Golden Vase',
//     'rate' : '4.8',
//     'sale' : '4,646 sold',
//     'price' : '55.2',
//     'quantity' : 1,
//     'like' : true,
//   }
// ];
//
// List r5 = [
//   {
//     'img' : 'assets/images/vase2.png',
//     'text' : 'Glass Vase',
//     'rate' : '4.6',
//     'sale' : '7,666 sold',
//     'price' : '50.2',
//     'quantity' : 1,
//     'like' : true,
//   },
//   {
//     'img' : 'assets/images/vase3.png',
//     'text' : 'Designed Vase',
//     'rate' : '4.9',
//     'sale' : '8,666 sold',
//     'price' : '70.2',
//     'quantity' : 1,
//     'like' : true,
//   }
// ];
//
//
//
//
// List icon1 = [
//   {
//     'icons' : const Icon(Icons.chair, color: Colors.white, size: 25,),
//     'text' : "Sofa",
//   },
//   {
//     'icons' : const Icon(Icons.chair_alt, color: Colors.white, size: 25,),
//     'text' : "Chair",
//   },
//   {
//     'icons' : const Icon(Icons.table_restaurant_rounded, color: Colors.white, size: 25,),
//     'text' : "Table",
//   },
//   {
//     'icons' : const Icon(Icons.kitchen_outlined, color: Colors.white, size: 25,),
//     'text' : "Kitchen",
//   },
//
// ];
// List icon2 = [
//   {
//     'icons' : const Icon(Icons.light, color: Colors.white, size: 25,),
//     'text' : "Lamp",
//   },
//   {
//     'icons' : const Icon(Icons.kitchen_outlined, color: Colors.white, size: 25,),
//     'text' : "Cupboard",
//   },
//   {
//     'icons' : const Icon(Icons.park, color: Colors.white, size: 25,),
//     'text' : "Vase",
//   },
//   {
//     'icons' : const Icon(Icons.pending, color: Colors.white, size: 25,),
//     'text' : "Others",
//   },
//
// ];