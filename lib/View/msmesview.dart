import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar/Utility/Header.dart';
import 'package:solar/Utility/footersection.dart';
import 'package:solar/Utility/form.dart';

import '../Controller/msmecontroller.dart';

class Msmeview extends StatefulWidget {
  const Msmeview({super.key});

  @override
  State<Msmeview> createState() => _MsmeviewState();
}

class _MsmeviewState extends State<Msmeview> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<MsmeController>(
          builder: (msmecontroller) => Column(
            children: [
              const Header(),
              Container(
                height: width > 600 ? 500 : 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/msmebanner.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text('MSMEs (Micro, Small, Medium Enterprises)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width > 600 ? 30 : 22,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                    textAlign: TextAlign.justify,
                    'Micro, Small, and Medium Enterprises (MSMEs) are increasingly turning to rooftop solar systems to meet their energy needs efficiently and sustainably. These systems offer a cost-effective solution for reducing electricity bills and reliance on traditional grid power while also contributing to environmental sustainability. By harnessing solar energy from their rooftops, MSMEs can not only save on operational costs but also demonstrate their commitment to green practices.Overall, investing in rooftop solar systems presents a significant opportunity for MSMEs to achieve energy independence, cost savings, and environmental stewardship simultaneously.',
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
