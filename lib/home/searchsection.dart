import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page/calendar_page.dart';

//variable couleur
const d_green = Color(0xFF54D3C2);

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
                      onPressed: () {},
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
                    Row(
                      children: [
                        Text(
                          'Choose date',
                          style: GoogleFonts.nunito(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return CalendarPage();
                                    }));
                                  },
                                  child: Icon(
                                    Icons.calendar_today_outlined,
                                    size: 23,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      primary: d_green,
                                      padding: EdgeInsets.all(10)))
                            ],
                          ),
                        ),
                      ],
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
