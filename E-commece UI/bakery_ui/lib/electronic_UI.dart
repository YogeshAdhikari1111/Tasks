import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectronicApp extends StatefulWidget {
  const ElectronicApp({Key? key}) : super(key: key);

  @override
  State<ElectronicApp> createState() => _ElectronicAppState();
}

class _ElectronicAppState extends State<ElectronicApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: Text(
          'Electronics',
          style: GoogleFonts.ubuntu(fontSize: 20, color: Colors.white70),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  color: const Color.fromARGB(255, 213, 90, 52)),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
                color: const Color.fromARGB(255, 213, 90, 52),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.black87,
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width -
                          MediaQuery.of(context).size.width / 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 26, 25, 25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 25, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7uvFT56TviuTYeT5Il6K9DDIAvyKOGqNCMQ&usqp=CAU'),
                                height: 150,
                                width: 190,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'MacBook Pro',
                                  style: GoogleFonts.zenMaruGothic(
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Our thinnest, lightest notebook,\ncompletely transformed by the\nApple M1chip. CPU speeds up to \n3.5x faster. GPU speeds up to\n5x faster.',
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 10, color: Colors.white54),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 20),
                                  child: Text(
                                    'Power. Its in the Air.',
                                    style: GoogleFonts.domine(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w300,
                                        color: const Color.fromARGB(
                                            255, 181, 90, 62)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'From ₹92900.00*',
                                      style: GoogleFonts.openSans(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                    Text(
                                      ' | ',
                                      style: GoogleFonts.domine(
                                          color: const Color.fromARGB(
                                              255, 181, 90, 62),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Buy Now >',
                                        style: GoogleFonts.openSans(
                                            color: Colors.white, fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Popular Products ',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.55,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: [
                        buildItem(
                            'MacBook Pro',
                            'Laptop: Apple M1 chip, 8GB RAM, 256GB SSD Storage',
                            92900.00,
                            'https://m.media-amazon.com/images/I/71vFKBpKakL._SX522_.jpg',
                            1),
                        buildItem(
                            'OnePlus Nord 2 5G',
                            'Gray Sierra, 8GB RAM, 128GB Storage',
                            29999.00,
                            'https://m.media-amazon.com/images/I/71KVeQql77S._SX569_.jpg',
                            2),
                        buildItem(
                            'iQOO Z6 Pro',
                            'Legion Sky, 6GB RAM, 128GB Storage',
                            29999.00,
                            'https://m.media-amazon.com/images/I/615YGGce1-L._SX569_.jpg',
                            3),
                        buildItem(
                            'Apple iPhone 12',
                            '64GB - Blue, 6.1-inch ',
                            54900.00,
                            'https://m.media-amazon.com/images/I/71ZOtNdaZCL._SX679_.jpg',
                            4),
                        buildItem(
                            'OPPO F21 Pro',
                            'unset Orange, 8GB RAM, 128 Storage)',
                            22999,
                            'https://m.media-amazon.com/images/I/81W6rHmWHhL._SX679_.jpg',
                            5),
                        buildItem(
                            'Apple Watch Series 7 ',
                            'GPS + Cellular, 45mm- Blue ',
                            49900,
                            'https://m.media-amazon.com/images/I/71SFsTBSJgL._SX679_.jpg',
                            6),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildItem(
    String name, String desc, num price, String imagrUrl, int index) {
  return Padding(
    padding: index.isEven
        ? const EdgeInsets.only(right: 10.0)
        : const EdgeInsets.only(left: 10.0),
    child: Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          style: BorderStyle.solid,
          color: const Color.fromARGB(255, 181, 90, 62),
        ),
        color: const Color.fromARGB(66, 77, 26, 26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 124,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(imagrUrl), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                name,
                style: GoogleFonts.ubuntu(fontSize: 14, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                desc,
                style: GoogleFonts.ubuntu(fontSize: 12, color: Colors.white54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                '₹ $price /-',
                style: GoogleFonts.ubuntu(fontSize: 12, color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 8),
              child: SizedBox(
                height: 20,
                width: 95,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 213, 90, 52)),
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.ubuntu(fontSize: 10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: SizedBox(
                height: 20,
                width: 95,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 213, 90, 52)),
                  child: Text(
                    'Add to Cart',
                    style: GoogleFonts.ubuntu(fontSize: 12),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: TextButton(
                  child: Text(
                    'See all variants >',
                    style: GoogleFonts.ubuntu(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 213, 90, 52)),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    ),
  );
}
