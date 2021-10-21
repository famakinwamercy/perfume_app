import 'package:flutter/material.dart';
import 'package:perfume_online_app/model/perfume_model.dart';

class BestDeal extends StatefulWidget {
  final Perfume perfume;
  const BestDeal({Key? key,required this.perfume}) : super(key: key);

  @override
  _BestDealState createState() => _BestDealState();
}

class _BestDealState extends State<BestDeal> {
  @override
  Widget build(BuildContext context) {
    return  Container(height: 90,width: 250,
      decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),child: Stack(children: [
        Align(alignment: Alignment.bottomRight,
          child: Container(width: 50,height: 30,decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),bottomRight: Radius.circular(12)
              )),child: Center(child: Text(widget.perfume.discount.toStringAsFixed(0) + "%")),),
        ),Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 80,width: 70,decoration: BoxDecoration(color: Colors.green.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12)),child: Image.asset(widget.perfume.images[0]),),
            ),Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.perfume.name,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                Text(widget.perfume.description,style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold)),

                Text(widget.perfume.price.toStringAsFixed(2),
                    style: TextStyle(color: Colors.green,fontSize: 13,fontWeight: FontWeight.bold))

              ],)
          ],
        )
      ],),);
  }
}
