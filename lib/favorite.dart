
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/product.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/var.dart';


class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // Верхняя колонка с названием
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(191, 218, 237, 1),
        title: const Center(
          child: Text('Избранное',
          style: TextStyle(
              color: Color.fromARGB(251, 0, 0, 0),
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),

      body: 
      // full screen
      Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[

            // top text
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child:  Center(
                child: Text('Товаров: ${favorite.length}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                ),
                )
                )
            ),
          
            // center
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
                  Center(

                    // the length of the list
                    child: Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: favorite.length,
                            itemBuilder: (BuildContext context, index) {
                              return ProductCard(index: index);
                            }
                            )
                          ),
                    ),     
            ),
         Container(
           height: MediaQuery.of(context).size.height * 0.045,
        ),
            // bottom bar
        Container(//Нижняя панель для перехода по разделам
              height: MediaQuery.of(context).size.height * 0.075,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Row(
                children: <Widget> [

                   // Переход на главный экран
                  Container(
                   height: MediaQuery.of(context).size.height * 0.075, 
                   width: MediaQuery.of(context).size.width * 0.25,
                   color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child:  TextButton( 
                      child: const Icon(
                        Icons.home,
                        color: Color.fromARGB(251, 0, 0, 0),
                       ),
                     onPressed: () => {  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const FirstPage()),
                     )
                     },           
                    ),
                   )
                  ),

                  // Переход на экран избранного
                  Container(
                    height: MediaQuery.of(context).size.height * 0.075, 
                    width: MediaQuery.of(context).size.width * 0.25,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child:  TextButton( 
                       child: const Icon(
                          Icons.favorite,
                          color: Color.fromARGB(251, 0, 0, 0),
                           ),
                       onPressed: () => {  Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const Favorite ()),
                              )
                              },
                    ),      
                   )                
                  ),


                  //Переход в корзину
                   Container(
                   height: MediaQuery.of(context).size.height * 0.075, 
                   width: MediaQuery.of(context).size.width * 0.25,
                   color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child:  TextButton( 
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(251, 0, 0, 0),
                       ),
                     onPressed: () => {  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  Cart()),
                     )
                     },           
                    ),
                   )
                  ),

                  //Переход в профиль
                   Container(
                   height: MediaQuery.of(context).size.height * 0.075, 
                   width: MediaQuery.of(context).size.width * 0.25,
                   color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child:  TextButton( 
                      child: const Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(251, 0, 0, 0),
                       ),
                     onPressed: () => {  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  PersonalPage()),
                     )
                     },           
                    ),
                   )
                  ),
                ]
              )   
            ),
          ]
      )
    )
    );
  }
}