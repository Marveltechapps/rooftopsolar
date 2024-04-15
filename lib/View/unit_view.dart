import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:solar/Controller/unitfreecontroller.dart';
import 'package:solar/Utility/footersection.dart';
import '../Utility/Header.dart';

class UnitFree extends StatefulWidget {
  const UnitFree({super.key});

  @override
  State<UnitFree> createState() => _UnitFreeState();
}

class _UnitFreeState extends State<UnitFree> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double titleFontSize = width > 600 ? 30 : 20; // Responsive title font size
    double bodyFontSize = width > 600 ? 20 : 10; // Responsive body font size

    final screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600; // Responsive padding

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GetBuilder<unitfreeController>(
            builder: (controller) {
              return Column(
                children: [
                  const Header(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: Text(
                      "PM Surya Ghar Muft Bijlee Yojana",
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: width > 600 ? width * 0.7 : width - 30,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "This is a Central Scheme that aims to provide free electricity to one crore households in India, who opt to install roof top solar electricity unit.The households will be able to get 300 units of electricity free every month.",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: bodyFontSize, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: width,
                        height: width > 600 ? 600 : 500,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/unitfreebanner.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        top: 20,
                        // right: width - 0.10,
                        // left: width - 0.10,
                        child: Card(
                          color: Colors.green,
                          child: Container(
                            width: width * 0.70,
                            alignment: Alignment.center,
                            height: width > 600 ? 600 : 500,
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "How does 300 unit of free rooftop solar work?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: titleFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "The scheme provides for a subsidy of 60% of the solar unit cost for systems up to 2 kW capacity and 40 percent of additional system cost for systems between 2 to 3 kW capacity.The subsidy has been capped at 3 kW capacity. At current benchmark prices, this will mean Rs 30,000 subsidy for 1 kW system, Rs 60,000 for 2 kW systems and Rs 78,000 for 3 kW systems or higher.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: bodyFontSize,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Who are eligible to apply for the Scheme?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: titleFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Bullet points
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1. The applicant must be an Indian citizen.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: bodyFontSize,
                                        ),
                                      ),
                                      Text(
                                        "2. Must own a house with a roof that is suitable for installing solar panels\n3. The household must have a valid electricity connection.",
                                        style: TextStyle(
                                          fontSize: bodyFontSize,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "4. The household must not have availed of any other subsidy for solar panels",
                                        style: TextStyle(
                                          fontSize: bodyFontSize,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    child: Center(
                      child: SizedBox(
                        height: isLargeScreen
                            ? 800
                            : 900, // Adjust the height for mobile
                        width: isLargeScreen
                            ? screenWidth - 300
                            : screenWidth - 10, // Adjust the width for mobile
                        child: Card(
                          color: Colors.white,
                          margin: const EdgeInsets.all(20),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Text(
                                  'Register Now',
                                  style: TextStyle(
                                    color: const Color(0xFFFF9900),
                                    fontSize: isLargeScreen
                                        ? 24
                                        : 12, // Adjust font size for mobile
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                isLargeScreen
                                    ? buildLargeScreenContent()
                                    : buildSmallScreenContent(),
                                const SizedBox(height: 50),
                                SizedBox(
                                  height: 55,
                                  width: isLargeScreen
                                      ? screenWidth - 800
                                      : screenWidth, // Adjust button width for mobile
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Your button action here
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color(0xFF1E73BE))),
                                    child: Text(
                                      'Submit Your Interest',
                                      style: TextStyle(
                                          fontSize: isLargeScreen
                                              ? 20
                                              : 16, // Adjust font size for mobile
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Footer()
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildLargeScreenContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: buildLeftSection()),
        Expanded(child: buildRightSection()),
      ],
    );
  }

  Widget buildSmallScreenContent() {
    return Column(
      children: <Widget>[
        buildLeftSection(),
        buildRightSection(),
      ],
    );
  }

  Widget buildLeftSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Electricity Distribution Company / Utility',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Select Kilowatt',
              border: OutlineInputBorder(),
            ),
            value: selectedValue,
            isExpanded: true,
            items: ['1 Kilowatt', '2 Kilowatt', '3 Kilowatt']
                .map((label) => DropdownMenuItem(
                      value: label,
                      child: Text(label),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget buildRightSection() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Register Mobile Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'State',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'District',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Consumer Account Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
