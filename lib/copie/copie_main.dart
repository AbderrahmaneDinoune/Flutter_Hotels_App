import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page/calendar_page.dart';

//variable couleur
const d_green = Color(0xFF54D3C2);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotels Booking',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [SearchSection(), HotelSection()]),
      ),
    );
  }
}

// AppBarr Class __________________________________________________________________________________________________________________________////
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.grey[800], size: 20)),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_rounded,
                color: Colors.grey[800], size: 20)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.place, color: Colors.grey[800], size: 20)),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
//__________________________________________________________________________________________________________________________________________////

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: Offset(0, 3))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'London',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none),
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CalendarPage();
                        }));
                      },
                      child: Icon(
                        Icons.search,
                        size: 26,
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: d_green,
                          padding: EdgeInsets.all(10)))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose date',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('12 Dec - 22 Dec',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Number of Rooms',
                        style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 15,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text('1 Room - 2 Adults',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//                ________________________________________
class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel3.jpg',
      'price': '220'
    },
    {
      'title': 'Queen Hotel',
      'place': 'Casablanca, Maroc',
      'distance': 9,
      'review': 16,
      'picture': 'images/hotel2.png',
      'price': '400'
    },
    {
      'title': 'Elite Hotel',
      'place': 'Marrakech, Maroc',
      'distance': 6,
      'review': 45,
      'picture': 'images/hotel1.jpg',
      'price': '350'
    },
    {
      'title': 'Grand Royl Hotel',
      'place': 'Agadir, Maroc',
      'distance': 8,
      'review': 36,
      'picture': 'images/hotel4.webp',
      'price': '220'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('550 hotels founds',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                    Row(children: [
                      Text('Filters',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list_outlined),
                        color: d_green,
                        iconSize: 25,
                      )
                    ])
                  ])),
          Column(
              children: hotelList.map((hotel) {
            return HotelCard(hotel);
          }).toList())
        ],
      ),
    );
  }
}

//_____________________________________________________________________
class HotelCard extends StatelessWidget {
  final Map hotelData;

  const HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(0, 3))
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                image: DecorationImage(
                  image: AssetImage(
                    hotelData['picture'],
                  ),
                  fit: BoxFit.cover,
                )),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: d_green,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotelData['title'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '\$' + hotelData['price'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: d_green,
                      size: 14.0,
                    ),
                    Text(
                      hotelData['distance'].toString() + ' Km to city',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  'per night',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_rate, color: d_green, size: 14.0),
                      Icon(Icons.star_rate, color: d_green, size: 14.0),
                      Icon(Icons.star_rate, color: d_green, size: 14.0),
                      Icon(Icons.star_rate, color: d_green, size: 14.0),
                      Icon(Icons.star_border, color: d_green, size: 14.0),
                    ],
                  ),
                  SizedBox(width: 20),
                  Text(
                    hotelData['review'].toString() + ' reviews',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
