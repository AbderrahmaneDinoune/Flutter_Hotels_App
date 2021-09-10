import 'package:flutter/material.dart';
import 'package:hotels/home/appbar.dart';
import 'package:hotels/home/hotelsection.dart';
import 'package:hotels/home/searchsection.dart';

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
