
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu1/detailes_page.dart';
import 'package:restaurant_menu1/models/meal.dart';

import 'lang_provider.dart';

class DishesPage extends StatefulWidget {
    const DishesPage({Key? key}) : super(key: key);



  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {
  bool isItemSelected = false;
  int _selectedItemIndex = 0;



  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider> (context,listen: false);
    return WillPopScope(onWillPop:(){
      langProvider.getItemSelected();

        langProvider.isItemSelected(false);
      exit(0);
      return Future.value(false);
    },
      child: Consumer<LangProvider>(builder: (context,data,child){
        return SafeArea(
          child: (langProvider.getItemSelected())
          ? DetailesPage(_selectedItemIndex):
        Scaffold(
        body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
    child: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
    return mainUI(constraints);
    },),
    ),
    ),
    );
    }),
    );
  }
  Widget mainUI(BoxConstraints constraints) {
    print("CURRENT_WIDTH : ${ constraints.maxWidth}");

    var axisCount = 1;
    var current = constraints.maxWidth;

    if(current <= 500) {
      axisCount = 1;
    }else if(current> 500 && current<= 750){
      axisCount = 2;
    }else if(current> 750 && current <= 1000){
      axisCount = 3;
    }else{
      axisCount = 4;
    }


    return   Column(
      children: [
        Expanded(
            child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                 SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: axisCount,
                    mainAxisExtent: 392,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 30),
                itemBuilder: (BuildContext context, int index) {
                  return meal(Meal.meal[index],context,index);
                }))
      ],
    );
  }

  Widget meal(Meal meal,context,index) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Card(
          elevation: 48,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(meal.bannerColor!),
            ),
            height: 360,
            width: 230,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  Row(
                    children: [
                      Container(
                        width: 2,
                        height: 25,
                        color: const Color(0xff00195C),
                      ),
                      const SizedBox(width: 4),
                      Text(meal.typ!),
                    ],
                  ),
                  const SizedBox(height: 42),
                  SizedBox(
                    height: 66,
                    child: Text(
                      meal.name!,
                      maxLines: 3,
                      style: const TextStyle(
                        height: 1.2,
                          fontSize: 24,
                          color: Color(0xff1E2022),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Text('Narxi:') ,Text(meal.cost!)],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/meal.png', height: 15, width: 16),
                          SizedBox(width: 4),
                          Text(meal.time!)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/ic_cal.png', height: 15, width: 16),
                          SizedBox(width: 4),
                          Text(meal.ingCount!.toString())
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)
                        ),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          BorderSide(color: Color(0xff175B8F)),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff175B8F))),
                              onPressed: () {
                                setState(() {
                                  final langProvider = Provider.of<LangProvider> (context,listen: false);
                                  langProvider.isItemSelected(true);
                                  _selectedItemIndex = index;
                                });
                              },
                              child: Text('Podroopni')),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: -24,
            right: -4,
            child: Image.asset(
              meal.imageUrl!,
              height: 170,
              width: 192,
            ))
      ],
    );
  }
}
