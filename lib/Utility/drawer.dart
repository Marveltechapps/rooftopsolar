import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar/Public/Constant.dart';

import '../Route/route_name.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        width: screenWidth / 2,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: kOrange),
              child: Center(
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      // Handle tap
                      Get.toNamed(homeScreen);
                    },
                    child: Image.asset(
                      alignment: Alignment.center,
                      'assets/Logo.png', // Replace with your asset image path
                      width: 120, // Set your width
                      height: 120, // Set your height
                    ),
                  ),
                ),
              ),
            ),

            ListTile(
              title: Text('Residential',
                  style: Theme.of(context).textTheme.titleMedium),
              onTap: () {
                Get.toNamed(residentialScreen);
              },
            ),
            ListTile(
              title:
                  Text('MSME', style: Theme.of(context).textTheme.titleMedium),
              onTap: () {
                Get.toNamed(MSMEsScreen);
              },
            ),
            ListTile(
              title: Text('Large Industry',
                  style: Theme.of(context).textTheme.titleMedium),
              onTap: () {
                Get.toNamed(industryScreen);
              },
            ),
            // Corporate Section
            ListTile(
              title: Text('Contact us',
                  style: Theme.of(context).textTheme.titleMedium),
              onTap: () {
                Get.toNamed(contactusScreen);
              },
            ),

            // Add other ListTiles for navigation

            ListTile(
              leading: const Icon(Icons.close),
              title:
                  Text('Close', style: Theme.of(context).textTheme.titleMedium),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
