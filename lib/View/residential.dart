import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar/Controller/residenrialcontroller.dart';
import 'package:solar/Utility/Header.dart';
import 'package:solar/Utility/footersection.dart';
import 'package:solar/Utility/form.dart';

class Residentialview extends StatefulWidget {
  const Residentialview({super.key});

  @override
  State<Residentialview> createState() => _ResidentialviewState();
}

class _ResidentialviewState extends State<Residentialview> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<Residentialcontroller>(
          builder: (residentialcontroller) => Column(
            children: [
              const Header(),
              Container(
                height: width > 600 ? 500 : 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/residentialbanner.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text('Home & Residential Societies',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width > 600 ? 30 : 22,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                    textAlign: TextAlign.justify,
                    'Rooftop  Solar has been at the forefront of championing sustainable energy solutions. By  investing in rooftop solar solutions, individuals can realize significant cost savings while  simultaneously contributing to environmental conservation efforts. Rooftop Power Solar provides solar rooftop solutions for homes, enabling homeowners to both save money and generate income from their unused rooftop space.',
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
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
