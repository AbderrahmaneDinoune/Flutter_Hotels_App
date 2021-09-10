import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//variable couleur
const d_green = Color(0xFF54D3C2);

class HotelCard extends StatelessWidget {
  final Map hotelData;

  const HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return hotelData == null
        ? CircularProgressIndicator()
        : Container(
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
