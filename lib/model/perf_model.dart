import 'package:flutter/material.dart';

List<String> perfumes = [

  "Bag",
  "Book"
  "Cloth"
  "Biro"
  "Top"
  "Net"
];
class Okay extends StatefulWidget {
  const Okay({Key? key}) : super(key: key);

  @override
  _OkayState createState() => _OkayState();
}

class _OkayState extends State<Okay> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Row(children:
          List.generate(perfumes.length, (index){
        return
          Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 20),
            child: Container(decoration: BoxDecoration( border: Border(bottom: BorderSide(width: 2,
              color:Colors.black, )),),
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(perfumes[index]),
            ),),
          );
      }
      )),
    );


  }
}
