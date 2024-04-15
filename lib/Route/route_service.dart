import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:solar/Route/binding.dart';
import 'package:solar/Route/route_name.dart';
import 'package:solar/View/home_view.dart';
import 'package:solar/View/contact_view.dart';
import 'package:solar/View/industryview.dart';
import 'package:solar/View/msmesview.dart';
import 'package:solar/View/residential.dart';
import 'package:solar/View/unit_view.dart';

class RouteService {
  Future<bool> onWillPop() async {
    return true;
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case residentialScreen:
        return GetPageRoute(
            routeName: residentialScreen,
            page: () => const Residentialview(),
            binding: ResidentialBinding(),
            settings: settings);
      case contactusScreen:
        return GetPageRoute(
            routeName: contactusScreen,
            page: () => const Contactus(),
            binding: ContactBinding(),
            settings: settings);

      case MSMEsScreen:
        return GetPageRoute(
            routeName: MSMEsScreen,
            page: () => const Msmeview(),
            binding: MSMEBinding(),
            settings: settings);

      case industryScreen:
        return GetPageRoute(
            routeName: industryScreen,
            page: () => const Industryview(),
            binding: IndustryBinding(),
            settings: settings);

      case unitfreeScreen:
        return GetPageRoute(
            routeName: unitfreeScreen,
            page: () => const UnitFree(),
            binding: UnitFreeBinding(),
            settings: settings);

      default:
        return GetPageRoute(
            routeName: homeScreen,
            page: () => const Home(),
            binding: HomeBinding(),
            settings: settings);
    }
  }
}
