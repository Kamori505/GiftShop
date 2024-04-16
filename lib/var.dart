//class Product {
  //String? name;
  //String? phone;
  //int? cost;
  //String? description;
//}

class Product {
  int? id;
  String? title;
  double price = 0;
  String? description;
  double? rating;
  String? image;
  bool isFavorite = false;
  bool isCart = false;

}


Product product1 = Product()
  ..id = 1
  ..title = "Title1"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";
  

Product product2 = Product()
  ..id = 2
  ..title = "gfhfghnsfn"
  ..price = 14360
  .. description = "Description"
  ..rating = 3
  ..image = "image";


Product product3 = Product()
  ..id = 3
  ..title = "hgmdghmdj,"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";


Product product4 = Product()
  ..id = 4
  ..title = "4565688"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";



Product product5 = Product()
  ..id = 5
  ..title = "hg,mhmhj,"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";



Product product6 = Product()
  ..id = 6
  ..title = "Titzfgmm,gle1"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";




Product product7 = Product()
  ..id = 7
  ..title = "shfrDFNJdm"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";




Product product8 = Product()
  ..id = 8
  ..title = "fdngjh.l"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";





Product product9 = Product()
  ..id = 9
  ..title = "rfhmynhut"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";




Product product10 = Product()
  ..id = 10
  ..title = "sthm,jt"
  ..price = 1240
  .. description = "Description"
  ..rating = 4
  ..image = "image";
 








final List<Product> product = <Product>[product1  ,product2  ,product3  ,product4  ,product5 ,product6  ,product7  ,product8  ,product9  ,product10  ];

String url =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/IKB_191.jpg/800px-IKB_191.jpg';

final List<Product> favorite = <Product>[];
final List<Product> cart = <Product>[];



