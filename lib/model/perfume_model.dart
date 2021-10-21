class Perfume {

  final String name;
  final String brand;
  final String description;
  final String gender;
  final double price;
  final double discount;
  final bool icon;
 List <String>images;
   Perfume({
  required this.name, required this.brand, required this.description,
  required this.gender, required this.price,
  required this.discount, required this.icon, required this.images,

});
}
List <Perfume> getPerfumeList(){
  return <Perfume>[
  Perfume(
    name:"The one",
    brand:"Dolce & Gabanna",
    description:"Eau De Toilette 100ml Spray",
    gender:"male",
    price: 10.0,
    discount: 0.0,
    icon: false,
    images:[
      "assets/images/perf 8.png",
      "assets/images/perf 9.png",
    ]

    ),
  Perfume(
    name:"Olympic",
    brand:"Paco Rabanne",
    description:"Eau De Parfum 80ml Spray",
    gender:"male",
    price: 80.0,
    discount: 10.0,
    icon: false,
    images:[
      "assets/images/perf 3.png",
      "assets/images/perf 7.png",
    ]
     ),
  Perfume(
    name:"1 Million for Man",
    brand:"Paco Rabanna",
    description:"Eau De Toilette 200ml Spray",
    gender:"male",
    price: 69.0,
    discount: 5.0,
    icon: false,
    images:[

      "assets/images/perf 7.png",
      "assets/images/perf 10.png"
    ]
    ),
  Perfume(
    name:"Alien",
    brand:"Muglier",
    description:"Eau De Toilette 325ml Spray",
    gender:"male",
    price: 60.0,
    discount: 35.0,
    icon: false,
    images:[
      "assets/images/perf 9.png",
      "assets/images/perf 5.png"
    ]

    ),
  Perfume(
    name:"Le Male",
    brand:"Jean Paul Gaultier",
    description:"Eau De Toilette 125ml Spray",
    gender:"male",
    price: 60.0,
    discount: 30.0,
    icon: false,
    images:[
      "assets/images/perf 5.png",
      "assets/images/perf 10.png"
    ]

    ),
  Perfume(
    name:"Le Male",
    brand:"Jean Paul Gaultier",
    description:"Eau De Toilette 125ml Spray",
    gender:"male",
    price: 60.0,
    discount: 30.0,
    icon: false,
    images:[
      "assets/images/perf 6.png",
      "assets/images/perf 10.png"
    ]

    ),
  Perfume(
    name:"Invicted",
    brand:"Paco Rabanna",
    description:"Eau De Toilette 250ml Spray",
    gender:"male",
    price: 72.0,
    discount: 25.0,
    icon: false,
    images:[
      "assets/images/perf 1.png",
      "assets/images/perf 4.png"

    ]

    ),
  Perfume(
    name:"Miss Dior",
    brand:"Dior",
    description:"Eau De Toilette 50ml Spray",
    gender:"Female",
    price: 77.5,
    discount: 40.0,
    icon: false,
    images:[
      "assets/images/perf 10.png",
          "assets/images/perf 9.png"
    ]

    )
];
}
class Filter {
final String name;
final bool selected;
Filter({required this.name, required this.selected
});
}
List<Filter> filters=[
  Filter(
    name: "FLORAL",
    selected:  false,
  ),
  Filter(
    name: "ORIENTAL",
    selected:  false,
  ),
  Filter(
    name: "WOODY",
    selected:  false,
  ),
  Filter(
    name: "WARM & SPICY",
    selected:  false,
  ),
  Filter(
    name: "FRESH",
    selected:  false,
  ),
  Filter(
    name: "WOMAN",
    selected:  false,
  )
];


