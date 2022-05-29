import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:perfume_online_app/components/best_deal.dart';
import 'package:perfume_online_app/components/perf_name.dart';
import 'package:perfume_online_app/model/perfume_model.dart';
import 'components/filter.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Perfume> perfumes = getPerfumeList();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(elevation: 0,backgroundColor:  Colors.white,
      leading:Icon(Icons.menu,color:  Colors.black,),actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.shopping_bag_outlined, color: Colors.black,),
      )
    ],),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ SizedBox(height: 10,),
          Text("Perfumes",style:
          TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        SizedBox(height: 25,),
       SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(width: 50,height: 50,
              decoration: BoxDecoration(color: Colors.green,
                  borderRadius: BorderRadius.circular(12),),
              child: Center(child: Icon(Icons.settings_input_composite_sharp)),),
            SizedBox(width: 5,),
            FilterMode(),
          ],
        ),
  ),
            SizedBox(height: 25,),
       Container(height: 250,
           child:
         ListView(
           scrollDirection: Axis.horizontal,
           children:  perfList()
         )
       ),SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Best Deals",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
      Row(
        children: [
        Text("ALL",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey)),
          SizedBox(width: 5,),
        Icon(Icons.arrow_circle_down_rounded,color: Colors.grey,) ],
      ),
      ],),SizedBox(height: 15,),

            Container(height: 120,
                child:
                ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                    bestDealList()
                )
            ),          // Expanded(
        ],),
      ),
    ),);
  }
 List<Widget> perfList(){
    List<Widget> list = [];
        for(var perfume in perfumes){
          list.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: PerfName(perfume: perfume,),
          ));
        }
        return list;
  }

List<Widget> bestDealList() {
  List <Widget> list = [];
  for (var perfume in perfumes) {
    list.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: BestDeal(perfume: perfume),
    ));
  }
  return list;
}
}


