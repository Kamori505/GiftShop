
import 'package:flutter/material.dart';
import 'package:flutter_application_1/var.dart';




class ProductCard extends StatefulWidget {


  ProductCard({super.key, required this.index});
  int index;
  @override
   _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  //int ProductId = 0 ;

 

  bool isFavorite = false;
  void  initState() {
    super.initState();
    isFavorite = product[widget.index].isFavorite;
  }


  void toggleFavorite() {
  setState(() {
  isFavorite = !isFavorite;
    if (isFavorite) {
       // Добавить продукт в избранное
        favorite.add(product[widget.index]);
        product[widget.index].isFavorite = true;
   } else {
       // Удалить продукт из избранного
        favorite.remove(product[widget.index]);
        product[widget.index].isFavorite = false;
     }
    });
 }

  bool isCart = false;
  void  init() {
    super.initState();
    isCart = product[widget.index].isCart;
  }
  
  void toggleCard() {
  setState(() {
  isCart = !isCart;
    if (isCart) {
       // Добавить продукт в корзину
        cart.add(product[widget.index]);
        product[widget.index].isCart = true;
   } else {
       // Удалить продукт из корзины
        cart.remove(product[widget.index]);
        product[widget.index].isCart = false;
     }
    });
 }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child:  Image.network(url,fit:BoxFit.fitWidth,height: MediaQuery.of(context).size.height * 0.25, width: MediaQuery.of(context).size.width * 1),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                  
                ),
                onPressed:toggleFavorite
              
              ),
               Align(
                alignment: Alignment.centerLeft,
                 child:
                  IconButton(
                  icon: Icon(
                    isCart ? Icons.shopping_cart : Icons.add_shopping_cart,
                    color: isCart ? Color.fromARGB(255, 98, 160, 190) : Colors.grey,
                    
                  ),
                  onPressed:toggleCard
                               
                               ),
               ),
            ],
          ), 
            Row(
              children: <Widget> [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${product[widget.index].title}",
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${product[widget.index].description}",
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(height: 4),
                    Text(
                      "${product[widget.index].price}",
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${product[widget.index].rating}",
                    ),
                    
                  ],
                ),
              ],
            ),
          
        ],
      ),
    );
  }
}
