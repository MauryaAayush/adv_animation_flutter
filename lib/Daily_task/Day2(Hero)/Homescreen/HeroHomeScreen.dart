
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroHomeScreen extends StatefulWidget {
  const HeroHomeScreen({super.key});

  @override
  State<HeroHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HeroHomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 38, 10, 12),
                  height: height * 0.08,
                  width: width * 0.918,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 23,
                        backgroundImage: AssetImage('assets/images/me.jpg'),
                        foregroundImage: AssetImage('assets/images/me.jpg'),
                      ),

                      // here we have written the text of 👋 and AM
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  Good Morning 👋',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            'Aayush Maurya',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),

                      const SizedBox(width: 70,),

                      const Icon(
                        Icons.notifications_none_outlined,
                        size: 26,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.shopping_cart_outlined,
                        size: 26,
                        color: Colors.white,
                      ),



                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              // color: Colors.blue,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          color: const Color(0xFF35383F),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: const Color(0xFF35383F))),
                      child: Text(
                        'All',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Sofa',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Chair',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Table',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Kitchen',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Lamp',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'Cupboard',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: const Color(0xFF35383F), width: 2)),
                      child: Text(
                        'vase',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    children: List.generate(

                        r1.length,
                            (index) {
                              final product = r1[index];
                              return GestureDetector(

                          onTap: () {

                            Navigator.of(context)
                                .pushNamed('/second', arguments: product);
                          },
                          child: Hero(
                            tag: 'hero-${product['id']}',
                            child: Products(
                              context,
                              r1[index]['img'],
                              r1[index]['text'],
                              r1[index]['rate'],
                              r1[index]['sale'],
                              r1[index]['price'],
                              r1[index]['like'],
                                  (newLike) {
                                setState(() {
                                  r1[index]['like'] = newLike;
                                });
                              },
                            ),
                          ),
                        );
                            }))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r2.length,
                            (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/second', arguments: r2[index]);
                          },
                          child: Products(
                            context,
                            r2[index]['img'],
                            r2[index]['text'],
                            r2[index]['rate'],
                            r2[index]['sale'],
                            r2[index]['price'],
                            r2[index]['like'],
                                (newLike) {
                              setState(() {
                                r2[index]['like'] = newLike;
                              });
                            },
                          ),
                        )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r3.length,
                            (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/second', arguments: r3[index]);
                          },
                          child: Products(
                            context,
                            r3[index]['img'],
                            r3[index]['text'],
                            r3[index]['rate'],
                            r3[index]['sale'],
                            r3[index]['price'],
                            r3[index]['like'],
                                (newLike) {
                              setState(() {
                                r3[index]['like'] = newLike;
                              });
                            },
                          ),
                        )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r4.length,
                            (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/second', arguments: r4[index]);
                          },
                          child: Products(
                            context,
                            r4[index]['img'],
                            r4[index]['text'],
                            r4[index]['rate'],
                            r4[index]['sale'],
                            r4[index]['price'],
                            r4[index]['like'],
                                (newLike) {
                              setState(() {
                                r4[index]['like'] = newLike;
                              });
                            },
                          ),
                        )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r5.length,
                            (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/second',
                                arguments: r5[index]

                            );
                          },
                          child: Products(
                            context,
                            r5[index]['img'],
                            r5[index]['text'],
                            r5[index]['rate'],
                            r5[index]['sale'],
                            r5[index]['price'],
                            r5[index]['like'],
                                (newLike) {
                              setState(() {
                                r5[index]['like'] = newLike;
                              });
                            },
                          ),

                        )))),
          ],
        ),
      ),
    );
  }
  Widget Products(BuildContext context, String img, String text, String rate,
      String sale, String price, bool like,Function(bool) onLikeChanged,) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),

      // here is the single container.
      // color : Colors.yellow,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  height: height * 0.2,
                  width: width * 0.425,
                  decoration: const BoxDecoration(
                      color: Color(0xFF35383F),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Stack(
                    children: [
                      Image.asset(img, fit: BoxFit.fitWidth),
                      Positioned(
                        top: 10,
                        right: 15,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFF17181A),
                          radius: 13,
                          child: GestureDetector(
                            onTap: () {
                              onLikeChanged(!like);
                            },
                            child: Icon(
                              Icons.favorite,
                              color: like ? Colors.white : Colors.red,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 190, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox.square(
                        dimension: 8,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_half,
                            color: Colors.white,
                          ),
                          const SizedBox.square(
                            dimension: 10,
                          ),
                          Text('$rate   |',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox.square(
                            dimension: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.025,
                            width: width * 0.19,
                            decoration: const BoxDecoration(
                                color: Color(0xFF35383F),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              sale,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox.square(dimension: 8),
                      Text('\$$price',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget CategoriesBox(String text, Icon icons) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      CircleAvatar(
          backgroundColor: const Color(0xFF35383F),
          radius: 28,
          child: icons),
      const SizedBox.square(dimension: 12),
      Text(
        text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15)),
      )
    ],
  ),
);


Color iconColor = Colors.white;

List r1 = [
  {
    'id' : '1',
    'img' : 'assets/images/chair.png',
    'text' : 'Royal Wooden',
    'rate' : '4.7',
    'sale' : '6,686 sold',
    'price' : '115.25',
    'quantity' : 1,
    'like' : true,
  },
  {
    'id' : '2',
    'img' : 'assets/images/chair2.png',
    'text' : 'Royal Combo',
    'rate' : '4.8',
    'sale' : '6,635 sold',
    'price' : '125.26',
    'quantity' : 1,
    'like' : true,
  }
];

List r2 = [
  {
    'img' : 'assets/images/3sofa.png',
    'text' : 'table + 2Chair',
    'rate' : '4.8',
    'sale' : '4,866 sold',
    'price' : '100.29',
    'quantity' : 1,
    'like' : true,
  },
  {
    'img' : 'assets/images/table.png',
    'text' : 'Royal dinning',
    'rate' : '4.8',
    'sale' : '6,966 sold',
    'price' : '130.5',
    'quantity' : 1,
    'like' : true,
  }
];

List r3 = [
  {
    'img' : 'assets/images/lamp.png',
    'text' : 'Premium lamp',
    'rate' : '4.7',
    'sale' : '7,652 sold',
    'price' : '90',
    'quantity' : 1,
    'like' : true,
  },
  {
    'img' : 'assets/images/sofa3.png',
    'text' : 'Make-up lamp',
    'rate' : '4.8',
    'sale' : '9,826 sold',
    'price' : '80.26',
    'quantity' : 1,
    'like' : true,
  }
];

List r4 = [
  {
    'img' : 'assets/images/lamp3.png',
    'text' : 'Simple Lamp',
    'rate' : '4.3',
    'sale' : '10,006 sold',
    'price' : '15.2',
    'quantity' : 1,
    'like' : true,
  },
  {
    'img' : 'assets/images/vase.png',
    'text' : 'Golden Vase',
    'rate' : '4.8',
    'sale' : '4,646 sold',
    'price' : '55.2',
    'quantity' : 1,
    'like' : true,
  }
];

List r5 = [
  {
    'img' : 'assets/images/vase2.png',
    'text' : 'Glass Vase',
    'rate' : '4.6',
    'sale' : '7,666 sold',
    'price' : '50.2',
    'quantity' : 1,
    'like' : true,
  },
  {
    'img' : 'assets/images/vase3.png',
    'text' : 'Designed Vase',
    'rate' : '4.9',
    'sale' : '8,666 sold',
    'price' : '70.2',
    'quantity' : 1,
    'like' : true,
  }
];




List icon1 = [
  {
    'icons' : const Icon(Icons.chair, color: Colors.white, size: 25,),
    'text' : "Sofa",
  },
  {
    'icons' : const Icon(Icons.chair_alt, color: Colors.white, size: 25,),
    'text' : "Chair",
  },
  {
    'icons' : const Icon(Icons.table_restaurant_rounded, color: Colors.white, size: 25,),
    'text' : "Table",
  },
  {
    'icons' : const Icon(Icons.kitchen_outlined, color: Colors.white, size: 25,),
    'text' : "Kitchen",
  },

];
List icon2 = [
  {
    'icons' : const Icon(Icons.light, color: Colors.white, size: 25,),
    'text' : "Lamp",
  },
  {
    'icons' : const Icon(Icons.kitchen_outlined, color: Colors.white, size: 25,),
    'text' : "Cupboard",
  },
  {
    'icons' : const Icon(Icons.park, color: Colors.white, size: 25,),
    'text' : "Vase",
  },
  {
    'icons' : const Icon(Icons.pending, color: Colors.white, size: 25,),
    'text' : "Others",
  },

];