import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DeskTopNavBar(context),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [const Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget DeskTopNavBar(BuildContext context) {
  return Expanded(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              navLogo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HoverButton(
                      title: 'Activity',
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      subButtons: const []),
                  HoverButton(
                      title: 'Stay',
                      onPressed: () {
                        Navigator.pushNamed(context, '/wellness');
                      },
                      subButtons: const []),
                  HoverButton(
                      title: 'Package',
                      onPressed: () {
                        Navigator.pushNamed(context, '/packages');
                      },
                      subButtons: const []),
                  HoverButton(
                      title: 'Gallery',
                      onPressed: () {
                        Navigator.pushNamed(context, '/gallery');
                      },
                      subButtons: const []),
                  HoverButton(
                      title: 'Contact us',
                      onPressed: () {
                        Navigator.pushNamed(context, '/contactus');
                      },
                      subButtons: const []),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget navButton({required String title, required VoidCallback onPressed}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: onPressed,
      child: Text(title,
          style: const TextStyle(color: Colors.black, fontSize: 18)),
    ),
  );
}

Widget navLogo() {
  return Container(
    height: 50, // Adjust the height as needed
    width: 110,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/logo.png'), fit: BoxFit.contain)),
  );
}

class HoverButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final List<SubButton> subButtons;

  HoverButton(
      {required this.title, required this.onPressed, required this.subButtons});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: Column(
        children: [
          navButton(title: widget.title, onPressed: widget.onPressed),
          if (isHovered)
            Container(
              margin:
                  const EdgeInsets.only(top: 5), // Adjust top margin as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: widget.subButtons.map((subButton) {
                  return navButton(
                      title: subButton.title, onPressed: subButton.onPressed);
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }

  void onHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

class SubButton {
  final String title;
  final VoidCallback onPressed;

  SubButton({required this.title, required this.onPressed});
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: NavBar(),
    ),
  ));
}
