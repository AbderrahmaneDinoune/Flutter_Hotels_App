import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/home/hotelcard.dart';
import 'package:hotels/home/listhotel.dart';

//variable couleur
const d_green = Color(0xFF54D3C2);

class HotelSection extends StatelessWidget {
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
