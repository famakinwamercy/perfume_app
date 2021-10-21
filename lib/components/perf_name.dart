import 'package:flutter/material.dart';
import 'package:perfume_online_app/details_screen.dart';
import 'package:perfume_online_app/model/perfume_model.dart';

class PerfName extends StatefulWidget {
  final Perfume perfume;
  const PerfName({Key? key, required this.perfume}) : super(key: key);

  @override
  _PerfNameState createState() => _PerfNameState();
}

class _PerfNameState extends State<PerfName> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen(perfume: widget.perfume)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(25)),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    )),
                Center(
                  child: Hero(
                      tag: widget.perfume.name,
                      child: Image.asset(
                        widget.perfume.images[0],
                        fit: BoxFit.fitHeight,
                        height: 100,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.perfume.name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.perfume.price.toStringAsFixed(2),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
          )
        ],
      ),
    );
  }
}
