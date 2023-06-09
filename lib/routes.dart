// import 'dart:js';

import 'package:app1/representation/screen/check_out_screen.dart';
import 'package:app1/representation/screen/detail_hotel_screen.dart';
import 'package:app1/representation/screen/guest_and_room_screen.dart';
import 'package:app1/representation/screen/hotel_booking_screen.dart';
import 'package:app1/representation/screen/intro_screen.dart';
import 'package:app1/representation/screen/main_app.dart';
import 'package:app1/representation/screen/rooms_screen.dart';
import 'package:app1/representation/screen/select_date_screen.dart';
import 'package:app1/representation/screen/slpash_screen.dart';
import 'package:flutter/material.dart';


import 'data/model/hotel_model.dart';
import 'data/model/room_model.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => GuestAndRoomScreen(),
  RoomsScreen.routeName: (context) => RoomsScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailHotelScreen.routeName:
      final HotelModel hotelModel = (settings.arguments as HotelModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailHotelScreen(
          hotelModel: hotelModel,
        ),
      );
    case CheckOutScreen.routeName:
      final RoomModel roomModel = (settings.arguments as RoomModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => CheckOutScreen(
          roomModel: roomModel,
        ),
      );

    case HotelBookingScreen.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => HotelBookingScreen(
          destination: destination,
        ),
      );
    default:
      return null;
  }
}
