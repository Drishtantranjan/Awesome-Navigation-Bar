import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AwesomeNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AwesomeNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _AwesomeNavigationBarState createState() => _AwesomeNavigationBarState();
}

class _AwesomeNavigationBarState extends State<AwesomeNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black),
        ),
        child: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          onTap: widget.onTap,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          unselectedItemColor: Colors.blueGrey,
          unselectedLabelStyle:
              const TextStyle(fontSize: 10, color: Colors.blueGrey),
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/ic_home.svg',
                package: 'awesome_navigation_bar',
                height: 20,
                width: 20,
              ),
              label: 'Home',
              activeIcon: Image.asset(
                'assets/home/ic_homeAct.gif',
                package: 'awesome_navigation_bar',
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home/ic_template.png',
                package: 'awesome_navigation_bar',
                height: 24,
                width: 24,
              ),
              label: 'Template',
              activeIcon: Image.asset(
                'assets/home/ic_templateAct.gif',
                package: 'awesome_navigation_bar',
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home/ic_top.png',
                package: 'awesome_navigation_bar',
                height: 24,
                width: 24,
              ),
              label: 'Trending',
              activeIcon: Image.asset(
                'assets/home/ic_topAct.gif',
                height: 24,
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home/ic_resume.png',
                package: 'awesome_navigation_bar',
                height: 24,
                width: 24,
              ),
              label: 'Documents',
              activeIcon: Image.asset(
                'assets/home/ic_resumeAct.gif',
                package: 'awesome_navigation_bar',
                height: 24, // Adjust the height as needed
                width: 24, // Adjust the width as needed
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home/ic_saved.png',
                package: 'awesome_navigation_bar',
                height: 24, // Adjust the height as needed
                width: 24, // Adjust the width as needed
              ),
              label: 'Bookmarks',
              activeIcon: Image.asset(
                'assets/home/ic_savedAct.gif',
                height: 24, // Adjust the height as needed
                width: 24, // Adjust the width as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
