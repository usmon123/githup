import 'package:flutter/material.dart';
import 'package:restaurant_menu1/desert_page.dart';
import 'package:restaurant_menu1/dishes_page.dart';
import 'package:restaurant_menu1/drinks_page.dart';
import 'package:restaurant_menu1/salads_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DishesPage(),
    const SaladsPage(),
    const DrinksPage(),
    const DesertsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
            return myMenu(constraints);
          }),
          Expanded(child: _pages[_selectedIndex]),
        ],

      ),
    );

  }
  Widget myMenu(BoxConstraints constraints) {
    return SingleChildScrollView(
      child:
      ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: IntrinsicHeight(
          child: NavigationRail(
            minWidth: 52,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            groupAlignment: 0.5,
            selectedLabelTextStyle:
            const TextStyle(color: Colors.white, fontSize: 24),
            unselectedLabelTextStyle:
            const TextStyle(color: Colors.white70, fontSize: 18),
            labelType: NavigationRailLabelType.all,
            backgroundColor: const Color(0xff2A5270),
            selectedIndex: _selectedIndex,
            leading: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [],
            ),
            destinations:const [
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Ovqat"),
                ),),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Salat"),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Napitka"),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Desert"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
