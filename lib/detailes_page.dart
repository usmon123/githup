import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lang_provider.dart';
import 'models/meal.dart';

class DetailesPage extends StatefulWidget {
  final int selectedItemIndex;
  const DetailesPage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  State<DetailesPage> createState() => _DetailesPageState();
}

class _DetailesPageState extends State<DetailesPage> {
  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider> (context,listen: false);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/bg_color.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 12),
            child: IconButton(onPressed: () {
              setState(() {
               langProvider.isItemSelected(false);
              });
            },icon: const Icon(Icons.arrow_back,color: Colors.white,size: 36,
            ),
            ),
          ),
          myBody(),
        ],
      ),
    );
  }

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(top: 80, right: 30),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          detailes(),
          Positioned(
              top: -72,
              right: -48,
              child: Image.asset(
                Meal.meal[widget.selectedItemIndex].imageUrl!,
                width: 220,
              ))
        ],
      ),
    );
  }

Widget detailes() {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: Column(
        children: [
          const SizedBox(height: 140),
          const Text(
             'Osh',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/meal.png', height: 15, width: 16),
                const  SizedBox(width: 4),
                 const Text('12 min')
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/ic_cal.png', height: 15, width: 16),
                 const SizedBox(width: 4),
               const   Text('5 c')
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/ic_cal.png', height: 15, width: 16),
                const  SizedBox(width: 4),
                const  Text('325 cal')
                ],
              ),

            ],
          ),
        const  SizedBox(height: 16),
          Text(Meal.meal[0].detailes!,style:const TextStyle(fontSize: 16,height: 1.5),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
}
}
