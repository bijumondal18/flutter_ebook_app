import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';
import 'package:flutter_ebook_app/presentation/bookmark/ui/bookmark_screen.dart';
import 'package:flutter_ebook_app/presentation/home/ui/home_screen.dart';
import 'package:flutter_ebook_app/presentation/profile/ui/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final List pages = [
    const HomeScreen(),
    const BookmarkScreen(),
    const ProfileScreen(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.lightGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home_fill.svg',
                width: 24,
                height: 24,
              )),
          BottomNavigationBarItem(
              label: 'Bookmark',
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bookmark_fill.svg',
                width: 24,
                height: 24,
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: SvgPicture.asset(
                'assets/icons/person.svg',
                width: 24,
                height: 24,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/person_fill.svg',
                width: 24,
                height: 24,
              )),
        ],
      ),
    );
  }
}
