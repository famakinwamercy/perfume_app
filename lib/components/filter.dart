import 'package:flutter/material.dart';
import 'package:perfume_online_app/model/perfume_model.dart';

class FilterName extends StatefulWidget {
 final String name;
 final bool selected;
  const FilterName({
    Key? key,
    required this.name,required this.selected
  }) : super(key: key);

  @override
  _FilterNameState createState() => _FilterNameState();
}
 
class _FilterNameState extends State<FilterName> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(onTap: (){
      setState(() {
        isSelected = true;
      });
    },
      child: Container(width: 80,height:50,
          decoration: BoxDecoration(color:isSelected == false ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 2,color: isSelected == false ? Colors.green : Colors.white)),
          child: Center(child: Text(widget.name,
            style: TextStyle(color:isSelected == false ? Colors.white : Colors.green),),)),
    );
  }
}


class FilterMode extends StatelessWidget {
  const FilterMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterName(name: "FLORAL",selected: false,),SizedBox(width: 5,),
        FilterName(name: "ORIENTAL",selected: false,),SizedBox(width: 5,),
        FilterName(name: "WOODY",selected: false,),SizedBox(width: 5,),
        FilterName(name: "WARM & SPICY",selected: false,),SizedBox(width: 5,),
        FilterName(name: "FRESH",selected: false,),SizedBox(width: 5,),
        FilterName(name: "WOMEN",selected: false,),
      ],
    );
  }
}
