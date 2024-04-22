import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/login_in.dart';
import 'package:flutter_application_1/var.dart';


class PersonalPage extends StatelessWidget {
   PersonalPage({super.key});
   
  var MainColor= Color.fromRGBO(191, 218, 237, 1);
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
       backgroundColor:Color.fromRGBO(191, 218, 237, 1),
        title: const Center(
          child: Text('Профиль',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
          
        ),
      ),
      body: 
      
      Container(child: 
      Row(children: <Widget>[
        
          Expanded(flex: 1, 
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height:30),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
                decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(500),
                        color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                color: Colors.grey,
                width: 2,
            ),
                ),
                child: Center(
                  child:    Icon(
                                      size: 70,
                                      Icons.person,
                                      color: Colors.grey,
                                      ),
                ),
                ),
                
                SizedBox(height:30),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                
                child: Center(
                 child: ListView(
                          children: const <Widget>[
                            ListTile(
                              title: Text('Ivanov Ivan Ivanovich'),
                            ),
                            ListTile(
                              leading: Icon(Icons.mail),
                              title: Text('ivanov@mail.ru'),
                            ),
                            ListTile(
                              leading: Icon(Icons.phone),
                              title: Text('+71234567890'),
                            ),
                          ],
                        ),
                ),
              ),

              SizedBox(height:200),

               Container(
             height: MediaQuery.of(context).size.height * 0.06,
               width: MediaQuery.of(context).size.width * 0.9,
                   decoration: BoxDecoration( 
                           borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(191, 218, 237, 1)
                             ),
                        child:  TextButton(
                                 onPressed: () {Navigator.push(
                                         context,
                                      MaterialPageRoute(builder: (context) =>   loginIn  ()),
                                    );},
                                     child: Text('Выйти',
                                      style: TextStyle(fontSize: 18,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      )),
                                        
                                         )
                                     ),

              SizedBox(height:50),
         
          
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
          ),
       
      ]))
      
    );
  
  }
}