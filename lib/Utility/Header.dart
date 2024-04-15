import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar/Public/Constant.dart';
import 'package:solar/Route/route_name.dart';
import 'package:solar/Utility/drawer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 770;
    return AppBar(
      toolbarHeight: 100,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: isMobile,
      backgroundColor: kOrange,
      leading: isMobile
          ? IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAppDrawer()),
                );
              },
            )
          : null,
      title: isMobile
          ? Center(
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
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3, // thickness of the border
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(homeScreen);
                    },
                    child: Image.asset(
                      'assets/Logo.png', // Replace with your asset image path
                      width: 120, // Set your width
                      height: 100, // Set your height
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(unitfreeScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 46, 112, 48),
                      minimumSize:
                          Size(200, 60), // Set the minimum size// Text color
                    ),
                    child: Text("300 UNIT FREE ROOF TOP SOLAR",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white)),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.toNamed(residentialScreen);
                    },
                    child: Text("Residential",
                        style: Theme.of(context).textTheme.titleLarge)),
                TextButton(
                    onPressed: () {
                      Get.toNamed(MSMEsScreen);
                    },
                    child: Text("MSME",
                        style: Theme.of(context).textTheme.titleLarge)),
                TextButton(
                    onPressed: () {
                      Get.toNamed(industryScreen);
                    },
                    child: Text("Large Industry",
                        style: Theme.of(context).textTheme.titleLarge)),
                TextButton(
                    onPressed: () {
                      Get.toNamed(contactusScreen);
                    },
                    child: Text("Contact us",
                        style: Theme.of(context).textTheme.titleLarge)),
              ],
            ),
    );
  }
}
