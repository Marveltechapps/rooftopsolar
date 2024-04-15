import 'package:flutter/material.dart';
import 'package:solar/Utility/Header.dart';
import 'package:solar/Utility/footersection.dart';
import 'package:solar/Utility/form.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > 600;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 30,
            ),
            isLargeScreen
                ? Container(
                    width: screenWidth,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.03),
                            alignment: Alignment.center,
                            width: screenWidth * 0.45,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                IconWithText(
                                  icon: Icons.location_on_outlined,
                                  text:
                                      "63, L.B. Road, Adyar,\nChennai,Tamilnadu,India",
                                ),
                                SizedBox(height: 20),
                                IconWithText(
                                  icon: Icons.call,
                                  text:
                                      "Mobile: +91 887 012 26 81\n+91 944 412 62 40",
                                ),
                                SizedBox(height: 20),
                                IconWithText(
                                    icon: Icons.message,
                                    text:
                                        "support@RooftopSolar.com\nvsr@builtglory.com"),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: screenWidth * 0.55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Enquire",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                const Text(
                                    "Please fill in the below form to send us your booking enquiry.\nFields marked(*) are mandetory."),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.20,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey,
                                            hintText: "Name"),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: screenWidth * 0.20,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey,
                                            hintText: "Mobile Number"),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.20,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey,
                                            hintText: "City"),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: screenWidth * 0.20,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.grey,
                                            hintText: "City"),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: screenWidth * 0.40 + 15,
                                  child: const TextField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        filled: true,
                                        fillColor: Colors.grey,
                                        hintText: "Your message (required)."),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 40,
                                  // Adjust button width for mobile
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Your button action here
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue),
                                    ),
                                    child: Text(
                                      'Enquire Now',
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
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03),
                          alignment: Alignment.center,
                          width: screenWidth,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              IconWithText(
                                icon: Icons.location_on_outlined,
                                text:
                                    "63, L.B. Road, Adyar,\nChennai, Tamilnadu, India",
                              ),
                              SizedBox(height: 20),
                              IconWithText(
                                icon: Icons.call,
                                text:
                                    "Mobile: +91 887 012 26 81\n+91 944 412 62 40",
                              ),
                              SizedBox(height: 20),
                              IconWithText(
                                  icon: Icons.message,
                                  text:
                                      "Email: support@RooftopSolar.com\nvsr@builtglory.com"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Enquire",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  "Please fill in the below form to send us your booking enquiry.\nFields marked(*) are mandetory."),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: screenWidth,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey,
                                      hintText: "Name"),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: screenWidth,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey,
                                      hintText: "Mobile Number"),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: screenWidth,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(158, 158, 158, 1),
                                      hintText: "Email"),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: screenWidth,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey,
                                      hintText: "City"),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: screenWidth,
                                child: const TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey,
                                      hintText: "Your message (required)."),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                height: 40,
                                // Adjust button width for mobile
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Your button action here
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                  ),
                                  child: Text(
                                    'Enquire Now',
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
                      ],
                    ),
                  ),
            const Footer(),
          ],
        ),
      ),
    ));
//     return Scaffold(
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           const Header(),
// //           const SizedBox(
// //             height: 20.0,
// //           ),
// //           SingleChildScrollView(
// //             child: Container(
// //               height: isLargeScreen?800:900,
// //                width: isLargeScreen
// //                 ? screenWidth - 300
// //                 : screenWidth - 10,
// //               color: Colors.white,
// //               margin: const EdgeInsets.all(20),
// //               child: Padding(
// //                 padding: const EdgeInsets.all(16),
// //                 child: isLargeScreen
// //                     ? buildLargeScreenContent()
// //                     : buildSmallScreenContent(),
// //               ),
// //             ),
// //           ),
// //           const SizedBox(
// //             height: 20.0,
// //           ),
// //           Footer(),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // Widget buildLargeScreenContent() {
// //   return Row(
// //     crossAxisAlignment: CrossAxisAlignment.start,
// //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //     children: <Widget>[
// //       buildRightSection(),

// //       buildLeftSection(),

// //     ],
// //   );
// // }

// // Widget buildSmallScreenContent() {
// //   return Column(
// //     children: <Widget>[
// //       buildLeftSection(),
// //       buildRightSection(),
// //     ],
// //   );
// // }

// // Widget buildLeftSection() {
// //   return Padding(
// //     padding: const EdgeInsets.all(15),
// //     child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       mainAxisAlignment: MainAxisAlignment.start,
// //       children: <Widget>[
// //         TextFormField(
// //           decoration: const InputDecoration(
// //             hintText: 'Your Name',
// //             border: OutlineInputBorder(
// //               borderRadius: BorderRadius.zero,
// //             ),
// //             prefixIcon: Icon(Icons.person), // Add your desired icon here
// //           ),
// //         ),
// //         const SizedBox(height: 20),
// //         TextFormField(
// //           decoration: const InputDecoration(
// //               hintText: 'Your Phone Number',
// //               border: OutlineInputBorder(
// //                 borderRadius: BorderRadius.zero,
// //               ),
// //               prefixIcon: Icon(Icons.phone)),
// //         ),
// //         const SizedBox(height: 15),
// //         TextFormField(
// //           decoration: const InputDecoration(
// //               hintText: 'Your Email',
// //               border: OutlineInputBorder(
// //                 borderRadius: BorderRadius.zero,
// //               ),
// //               prefixIcon: Icon(Icons.mail)),
// //         ),
// //         const SizedBox(height: 15),
// //         TextFormField(
// //           maxLines: 5,
// //           decoration: const InputDecoration(
// //             hintText: 'Start Typing Your Message',
// //             border: OutlineInputBorder(
// //               borderRadius: BorderRadius.zero,
// //             ),
// //           ),
// //         ),
// //         const SizedBox(height: 15),
// //         ElevatedButton(
// //           onPressed: () {
// //             // Your submit functionality here
// //           },
// //           style: ElevatedButton.styleFrom(
// //             backgroundColor: const Color(0xFF233D63),
// //             shape: const RoundedRectangleBorder(
// //               // Rectangular shape
// //               borderRadius: BorderRadius.zero, // Zero radius for sharp corners
// //             ),
// //           ),
// //           child: const Text(
// //             'Submit',
// //             style: TextStyle(
// //               color: Colors.white, // White text color
// //             ),
// //           ),
// //         )
// //       ],
// //     ),
// //   );
// // }

// // Widget buildRightSection() {
// //   return const Padding(
// //     padding: EdgeInsets.all(15),
// //     child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: <Widget>[

// //         Text(
// //           "Address:",
// //           style: TextStyle(
// //               fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
// //         ),
// //         Text("63, L.B. Road, Adyar, Chennai, Tamilnadu, India"),
// //         SizedBox(height: 20),
// //         Text(
// //           "Phone:",
// //           style: TextStyle(
// //               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
// //         ),
// //         Text("Mobile: +91 887 012 26 81,+91 944 412 62 40"),
// //         SizedBox(height: 20),
// //         Text(
// //           "Email:",
// //           style: TextStyle(
// //               fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
// //         ),
// //         Text("Email: support@RooftopSolar.com, vsr@builtglory.com"),
// //       ],
// //     ),
//   );
  }
}
