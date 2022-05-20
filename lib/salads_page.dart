import 'package:flutter/material.dart';
import 'package:restaurant_menu1/detailes_page.dart';
import 'models/models_salat.dart';

class SaladsPage extends StatefulWidget {
  const SaladsPage({Key? key}) : super(key: key);



  @override
  State<SaladsPage> createState() => _SaladsPageState();
}

class _SaladsPageState extends State<SaladsPage> {
  bool isMealsSelected = false;
  int _selectedItemIndex = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: isMealsSelected
          ? DetailesPage(_selectedItemIndex):
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            children: [
              Expanded(
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisExtent: 392,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 30),
                      itemBuilder: (BuildContext context, int index) {
                        return meal(Meals.meals[index],context,index);
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Widget meal(Meals meals,context,index) {
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
              color: Color(meals.bannerColor!),
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
                      Text(meals.typ!),
                    ],
                  ),
                  const SizedBox(height: 42),
                  SizedBox(
                    height: 66,
                    child: Text(
                      meals.name!,
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
                    children: [const Text('Narxi:') ,Text(meals.cost!)],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/meal.png', height: 15, width: 16),
                         const SizedBox(width: 4),
                          Text(meals.time!)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/ic_cal.png', height: 15, width: 16),
                         const SizedBox(width: 4),
                          Text(meals.ingCount!.toString())
                        ],
                      ),
                    ],
                  ),
                 const SizedBox(height: 18),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined)
                        ),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                      const BorderSide(color: Color(0xff175B8F)),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff175B8F))),
                              onPressed: () {
                                setState(() {
                                  isMealsSelected = true;
                                  _selectedItemIndex = index;
                                });
                              },
                              child: const Text('Podroopni')),
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
            top: -28,
            right: -4,
            child: Image.asset(
              meals.imageUrl!,
              height: 170,
              width: 170,
            ))
      ],
    );
  }
}

