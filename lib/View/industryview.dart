import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:solar/Controller/industrycontrolller.dart';
import 'package:solar/Utility/form.dart';

import '../Utility/Header.dart';
import '../Utility/footersection.dart';

class Industryview extends StatefulWidget {
  const Industryview({super.key});

  @override
  State<Industryview> createState() => _IndustryviewState();
}

class _IndustryviewState extends State<Industryview> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<IndustryController>(
          builder: (industrycontroller) => Column(
            children: [
              const Header(),
              Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: width > 600 ? 500 : 330,
                    viewportFraction: 1.0,
                    autoPlay: true,
                  ),
                  items: [
                    'assets/industrybanner.png',
                    'assets/industrybanner2.png'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(i),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Text('Large Industry',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width > 600 ? 30 : 22,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                    textAlign: TextAlign.justify,
                    'Large enterprises, rooftop solar installations offer a scalable solution to meet their energy needs while demonstrating a commitment to sustainability and environmental responsibility. Additionally, by generating electricity on-site, businesses can mitigate the risks associated with fluctuating energy prices and grid disruptions. Rooftop solar systems provide large enterprises with a cost-effective and environmentally friendly way to power their operations.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width > 600 ? 20 : 12,
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Formcontact(),
              const SizedBox(
                height: 20.0,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
