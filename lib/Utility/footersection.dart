import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen size
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color.fromARGB(255, 58, 138, 5),
      padding: const EdgeInsets.all(20.0),
      // Adjust the height dynamically based on the content or screen
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Use Flex to adjust the layout based on screen size
          Flex(
            direction: screenSize.width > 600 ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 200,
                margin: screenSize.width > 600
                    ? const EdgeInsets.all(0)
                    : const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/Logo.png'),
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              // if (screenSize.width > 600) Spacer(),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('About us'),
                  const SizedBox(height: 5.0),
                  buildTextButtononpress(
                      'Solar, Wind & Bioenergy', '/About', context),
                  const SizedBox(height: 2.0),
                  // buildTextButtononpress('Property', '/DetailedPage', context),
                  // const SizedBox(height: 2.0),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                ],
              ),
              // if (screenSize.width > 600) const Spacer(),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('Links'),
                  const SizedBox(height: 5.0),
                  buildTextButtononpress('Contact us', '/contactus', context),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                  // buildTextButton(''),
                ],
              ),
              // if (screenSize.width > 600) const Spacer(),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextButtonunderline('Contact Us'),
                  const SizedBox(height: 5.0),
                  const IconWithText1(
                      icon: Icons.apartment, text: "Marvel Green Energy Ltd"),
                  const SizedBox(height: 3.0),
                  const IconWithText1(
                      icon: Icons.location_on,
                      text:
                          "Address: 63, L.B. Road, Adyar, \nChennai, Tamilnadu, India"),
                  const SizedBox(height: 3.0),
                  const IconWithText1(
                      icon: Icons.phone, text: "+91-9444126240"),
                  const SizedBox(height: 3.0),
                  const IconWithText1(
                      icon: Icons.phone, text: "+91-9361788384"),
                  const SizedBox(height: 3.0),
                  const IconWithText1(
                      icon: Icons.email, text: "vsr@marvelgreenenergy.com"),
                  const SizedBox(height: 3.0),
                  const IconWithText1(
                      icon: Icons.email, text: "support@marvelgreenenergy.com"),
                ],
              ),
            ],
          ),
          const Center(
            child: Divider(
              height: 30,
              color: Colors.black12,
            ),
          ),
          const SizedBox(height: 3),

          Text(
            "© 2024 Rooftop Solar | All rights reserved",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xFFF2F2F2),
              fontSize: MediaQuery.of(context).size.width > 600 ? 20 : 15,
            ),
          )
        ],
      ),
    );
  }

  Widget buildTextButton(String text) {
    return TextButton(
      onPressed: () {
        // Add your onPressed functionality here
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFF2F2F2),
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget buildTextButtonunderline(String text) {
    return TextButton(
      onPressed: () {
        // Add your onPressed functionality here
      },
      child: Text(
        text,
        style: const TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            color: Color(0xFFF2F2F2),
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildTextButtononpress(
      String text, String routeName, BuildContext context) {
    return TextButton(
      onPressed: () {
        if (routeName == '/') {
          // Navigator.of(context).pushAndRemoveUntil(
          //   // MaterialPageRoute(builder: (context) => const BuildHomepage()),
          //   (Route<dynamic> route) => false,
          // );
        } else {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

class IconWithText1 extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText1({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFF2F2F2),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: const Color(0xFFF2F2F2),
              fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 15),
        ),
      ],
    );
  }
}
