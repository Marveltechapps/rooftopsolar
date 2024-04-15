import 'package:flutter/material.dart';

class Formcontact extends StatefulWidget {
  const Formcontact({super.key});

  @override
  State<Formcontact> createState() => _FormcontactState();
}

class _FormcontactState extends State<Formcontact> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 600;
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: isLargeScreen ? 700 : 1350, // Adjust the height for mobile
          width: isLargeScreen
              ? width - 300
              : width - 10, // Adjust the width for mobile
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
                      fontSize:
                          width > 600 ? 30 : 22, // Adjust font size for mobile
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  isLargeScreen
                      ? buildLargeScreenContent()
                      : buildSmallScreenContent(),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 55,
                    width: isLargeScreen
                        ? width - 1000
                        : width - 150, // Adjust button width for mobile
                    child: ElevatedButton(
                      onPressed: () {
                        // Your button action here
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF1E73BE)),
                      ),
                      child: Text(
                        'Submit',
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
    );
  }

  Widget buildLargeScreenContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: buildLeftSection()),
        Expanded(child: buildCenterSection()),
        Expanded(child: buildRightSection()),
      ],
    );
  }

  Widget buildSmallScreenContent() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildLeftSection(),
          buildCenterSection(),
          buildRightSection(),
        ],
      ),
    );
  }

  Widget buildLeftSection() {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22, // Adjust font size for mobile
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconWithText(
              icon: Icons.location_on_outlined,
              text:
                  '#45-47, 3rd Floor,\n1st Main Road,\nGandhi Nagar, Adyar,\nChennai-20'),
          SizedBox(height: 10),
          IconWithText(
              icon: Icons.call, text: '+91 887 012 26 81\n+91 887 012 26 81'),
          SizedBox(height: 10),
          IconWithText(
              icon: Icons.message,
              text: 'vsr@builtglory.com\nsupport@builtglory.com'),
        ],
      ),
    );
  }

  Widget buildCenterSection() {
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
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'State',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'District',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Consumer Account Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
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
            hintText: 'Registered Mobile Nummber',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
          TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          const SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
            hintText: 'Where the Solar needed ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
          const SizedBox(height: 20),
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
}

// Helper widget for an icon followed by text, used in the left column
class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 15),
        ),
      ],
    );
  }
}
