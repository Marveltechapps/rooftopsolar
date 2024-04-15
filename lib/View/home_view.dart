import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar/Public/Constant.dart';
import 'package:solar/Route/route_name.dart';
import 'package:solar/Utility/Header.dart';
import 'package:solar/Utility/iconsection.dart';
import 'package:solar/Utility/footersection.dart';
import 'package:solar/View/unit_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    'assets/rooftop1.png',
    'assets/rooftop2.png',
    'assets/rooftop3.png',
    'assets/rooftop4.png',
  ];

  final List<String> imgePath = [
    'assets/product1.png',
    'assets/product2.png',
    'assets/product3.png',
    'assets/product4.png',
  ];

  final List<String> text = [
    'Grid Connected \nSolar System',
    'Battery Based \nSolar System',
    'Micro inverter based grid connected system',
    'Solar Tree\n      '
  ];
  bool option1Selected = false;
  bool option2Selected = false;
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    Size screenSize = MediaQuery.of(context).size;

    // Dynamic sizing based on screen width
    double fontSizeTitle = screenSize.width < 600 ? 24 : 32;
    double fontSizeSubtitle = screenSize.width < 600 ? 16 : 24;
    double buttonWidth = screenSize.width < 600 ? screenSize.width * 0.8 : 200;
    double buttonHeight = screenSize.width < 600 ? 50 : 60;
    double buttonFontSize = screenSize.width < 600 ? 16 : 20;

    // Adjust positioning based on screen size
    double cardSidePadding = screenSize.width < 600 ? 20 : 50;
    // Adjust positioning based on screen size

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile View
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Header(),
                    Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 300,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            autoPlay: true,
                          ),
                          items: [
                            'assets/image1.png',
                            'assets/image2.png',
                            'assets/image3.png',
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(i),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Positioned(
                          top: 50,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '300 Units of Free Rooftop Solar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSizeTitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Text(
                                  'All over India',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSizeSubtitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const UnitFree()),
                                    // );
                                    Get.toNamed(unitfreeScreen);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.green,
                                    minimumSize: Size(200, buttonHeight),
                                  ),
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: buttonFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: cardSidePadding,
                          right: cardSidePadding,
                          child: Card(
                            color: Colors.orange,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.phone_callback_outlined,
                                      color: Colors.white,
                                    ),
                                    const VerticalDivider(),
                                    Text('Call now',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(color: Colors.white)),
                                    const VerticalDivider(),
                                    Text('+91-9444 12 6240',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(color: Colors.white)),
                                    const VerticalDivider(),
                                    Text('+91-9361 78 8384',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      child: const Text('Solar Rooftop Solutions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)),
                    ),
                    const SizedBox(height: 20.0),
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      children: List.generate(imagePaths.length, (index) {
                        return SquaredImage(imagePath: imagePaths[index]);
                      }),
                    ),
                    const SizedBox(height: 30.0),
                    Stack(
                      children: [
                        Container(
                          height: 600, // Make it fill the screen
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/solarpad.png'),
                              fit: BoxFit
                                  .cover, // Changed to cover to better fit different aspect ratios
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30, // Consider making this responsive as well
                          bottom: 30,
                          left: 0,
                          right: 0,
                          child: SingleChildScrollView(
                            // Makes it scrollable for smaller devices
                            child: Center(
                              child: Container(
                                width: swidth * 0.9,
                                child: Card(
                                  color: Colors.green,
                                  child: Padding(
                                    // Added padding for better text display
                                    padding: const EdgeInsets.all(0.8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize
                                          .min, // Makes the column wrap its content
                                      children: [
                                        const SizedBox(height: 10),
                                        Text(
                                          textAlign: TextAlign.center,
                                          'Benefits of going Solar',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(color: Colors.white),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            'Contribute to both your savings and the health of the planet by investing in solar panels installed either on your roof or on the ground. Harnessing the power of solar energy not only reduces your reliance on traditional energy sources but also minimizes your carbon footprint, making you an eco-conscious citizen.',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                            textAlign: TextAlign
                                                .justify, // Improves readability
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            svgImageWithText('assets/1.svg',
                                                'Save Eletricity Bill'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            svgImageWithText('assets/2.svg',
                                                'Good for the \nEnvironment'),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            svgImageWithText('assets/3.svg',
                                                'Quick payback'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            svgImageWithText('assets/4.svg',
                                                'Grid independence'),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            svgImageWithText('assets/5.svg',
                                                'Scalable Design'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            svgImageWithText('assets/6.svg',
                                                'Minimal Maintenance'),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              svgImageWithText('assets/7.svg',
                                                  'Long lifetime'),
                                              // const VerticalDivider(
                                              //   color: Colors.white,
                                              // ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: kOrange,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text('Solar Rooftop Advantage',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                  )),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ImageWithText('assets/Article.png',
                                      'Trusted Quality \n Assurance'),
                                  // const VerticalDivider(
                                  //   color: Colors.white,
                                  // ),
                                  const Spacer(),
                                  ImageWithText('assets/Article2.png',
                                      'Exclusive sales \n & service'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 150,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ImageWithText('assets/Article3.png',
                                      'Easy financing \n options'),
                                  // const VerticalDivider(
                                  //   color: Colors.white,
                                  // ),
                                  const Spacer(),
                                  ImageWithText('assets/Article4.png',
                                      'All-weather \nproof protection & \nhazard-free \ninstallations'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ImageWithText('assets/Article5.png',
                                    'Insurance for \n Solar Rooftop \n system'),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Our Product range',
                          style:
                              TextStyle(color: Colors.orange, fontSize: 25.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: List.generate(imgePath.length, (index) {
                        return Card(
                          child: Column(
                            mainAxisSize: MainAxisSize
                                .min, // Ensure the Column takes minimum vertical space
                            children: [
                              Expanded(
                                // Wrap the image in an Expanded widget to occupy remaining space
                                child: SquaredImg(imagePath: imgePath[index]),
                              ),
                              Text(
                                text[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10.0),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Footer(),
                  ],
                ),
              );
            } else {
              // Desktop View
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Header(),
                    Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 500,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            autoPlay: true,
                          ),
                          items: [
                            'assets/image1.png',
                            'assets/image2.png',
                            'assets/image3.png',
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(i),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Positioned(
                          top: 100,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '300 Units of Free Rooftop Solar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSizeTitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Text(
                                  'All over India',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSizeSubtitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed: () {
                                   Get.toNamed(unitfreeScreen);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.green,
                                    minimumSize:
                                        Size(buttonWidth, buttonHeight),
                                  ),
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: buttonFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 400,
                          bottom: 0,
                          left: cardSidePadding,
                          right: cardSidePadding,
                          child: Card(
                            color: Colors.orange,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.phone_callback_outlined,
                                    color: Colors.white,
                                  ),
                                  const VerticalDivider(
                                    color: Colors.white,
                                  ),
                                  Text('Call now',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(color: Colors.white)),
                                  const VerticalDivider(
                                    color: Colors.white,
                                  ),
                                  Text('+91-9444 12 6240',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(color: Colors.white)),
                                  const VerticalDivider(
                                    color: Colors.white,
                                  ),
                                  Text('+91-9361 78 8384',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 70),
                    Container(
                      alignment: Alignment.center,
                      child: const Text('Solar Rooftop Solutions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Roboto')),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      width: swidth > 600 ? swidth * 0.7 : swidth,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        children: List.generate(imagePaths.length, (index) {
                          return SquaredImage(imagePath: imagePaths[index]);
                        }),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Stack(
                      children: [
                        Container(
                          height: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/solarpad.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Card(
                                color: Colors.green,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Text('Benefits of going Solar',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                color: Colors.white,
                                              )),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                        textAlign: TextAlign.center,
                                        'Contribute to both your savings and the health of the planet by investing in solar panels installed either \n on your roof or on the ground. Harnessing the power of solar energy not only reduces your reliance on traditional \n energy sources but also minimizes your carbon footprint, making you an eco-conscious \n citizen.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              color: Colors.white,
                                            )),
                                    const SizedBox(height: 50.0),
                                    Container(
                                      height: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          svgImageWithText('assets/1.svg',
                                              'Save Eletricity Bill'),
                                          const VerticalDivider(
                                            color: Colors.white,
                                          ),
                                          svgImageWithText('assets/2.svg',
                                              'Good for the Environment'),
                                          const VerticalDivider(
                                            color: Colors.white,
                                          ),
                                          svgImageWithText(
                                              'assets/3.svg', 'Quick payback'),
                                          const VerticalDivider(
                                            color: Colors.white,
                                          ),
                                          svgImageWithText('assets/4.svg',
                                              'Grid independence'),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 50),
                                      child: Container(
                                        height: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            svgImageWithText('assets/5.svg',
                                                'Scalable Design'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            svgImageWithText('assets/6.svg',
                                                'Minimal Maintenance'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            svgImageWithText('assets/7.svg',
                                                'Long lifetime'),
                                            const VerticalDivider(
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 300,
                      color: kOrange,
                      width: swidth,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Solar Rooftop Advantage',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ImageWithText('assets/Article.png',
                                    'Trusted Quality \n Assurance'),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                ImageWithText('assets/Article2.png',
                                    'Exclusive sales \n & service'),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                ImageWithText('assets/Article3.png',
                                    'Easy financing \n options'),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                ImageWithText('assets/Article4.png',
                                    'All-weather \n proof protection & \n hazard-free \ninstallations'),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                ImageWithText('assets/Article5.png',
                                    'Insurance for \n Solar Rooftop \n system'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Our Product range',
                          style:
                              TextStyle(color: Colors.orange, fontSize: 25.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      width: swidth > 600 ? swidth * 0.8 : swidth,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: List.generate(imgePath.length, (index) {
                          return Card(
                            child: Column(
                              mainAxisSize: MainAxisSize
                                  .min, // Ensure the Column takes minimum vertical space
                              children: [
                                Expanded(
                                  // Wrap the image in an Expanded widget to occupy remaining space
                                  child: SquaredImg(imagePath: imgePath[index]),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    text[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const Footer(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class SquaredImage extends StatelessWidget {
  final String imagePath;

  const SquaredImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400, // Adjust as needed
        height: 400, // Adjust as needed
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class SquaredImg extends StatelessWidget {
  final String imagePath;

  const SquaredImg({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400, // Adjust as needed
        height: 400, // Adjust as needed
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class RadioText extends StatelessWidget {
  final String text;
  final int value;
  final int? groupValue;
  final ValueChanged<int?> onChanged;

  const RadioText({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(text),
      ],
    );
  }
}
