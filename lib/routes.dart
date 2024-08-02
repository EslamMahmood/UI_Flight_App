import 'package:fickleflight_app/pages/bookings_page.dart';
import 'package:fickleflight_app/pages/boracay.dart';
import 'package:fickleflight_app/pages/bottom_bar.dart';
import 'package:fickleflight_app/pages/explore_page.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes ={
'/' :(context) => BottomBar(),
'explore' :(context) => ExplorePage(),
'bookings':(context) => BookingsPage(),
'boracay' :(context) => BoracayPage(),
};