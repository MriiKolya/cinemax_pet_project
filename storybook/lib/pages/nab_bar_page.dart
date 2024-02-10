import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_kit/assets/icons/cinemax_icons.dart';
import 'package:ui_kit/theme/color_scheme.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => Scaffold(
        body: constraints.maxWidth >= 640
            ? Row(
                children: [
                  NavigationRail(
                    destinations: const [
                      NavigationRailDestination(
                        icon: Icon(CinemaxIcons.home),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(CinemaxIcons.home),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(CinemaxIcons.home),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(CinemaxIcons.home),
                        label: Text('Home'),
                      )
                    ],
                    selectedIndex: 0,
                  ),
                ],
              )
            : null,
        bottomNavigationBar: constraints.maxWidth <= 640
            ? GNav(
                haptic: true,
                gap: 2,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                tabMargin: const EdgeInsets.only(bottom: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                tabs: [
                  GButton(
                    textColor: PrimaryColor.blueAccent,
                    iconColor: TextColor.grey,
                    backgroundColor: PrimaryColor.soft,
                    iconActiveColor: PrimaryColor.blueAccent,
                    text: 'Home',
                    textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                    icon: CinemaxIcons.home,
                  ),
                  GButton(
                    textColor: PrimaryColor.blueAccent,
                    iconColor: TextColor.grey,
                    backgroundColor: PrimaryColor.soft,
                    iconActiveColor: PrimaryColor.blueAccent,
                    textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                    text: 'Search',
                    icon: CinemaxIcons.search,
                  ),
                  GButton(
                    textColor: PrimaryColor.blueAccent,
                    iconColor: TextColor.grey,
                    backgroundColor: PrimaryColor.soft,
                    iconActiveColor: PrimaryColor.blueAccent,
                    textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                    text: 'Favorite',
                    icon: CinemaxIcons.heart,
                  ),
                  GButton(
                    textColor: PrimaryColor.blueAccent,
                    iconColor: TextColor.grey,
                    backgroundColor: PrimaryColor.soft,
                    textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                    iconActiveColor: PrimaryColor.blueAccent,
                    text: 'Profile',
                    icon: CinemaxIcons.profile,
                  ),
                ],
              )
            : null,
      ),
    );
  }

  // void _onTap(BuildContext context, int index) {
  //   navigationShell.goBranch(
  //     index,
  //     initialLocation: index == navigationShell.currentIndex,
  //   );
  // }
}
