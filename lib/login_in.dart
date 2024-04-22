import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/login_up.dart';
import 'package:flutter_application_1/profile.dart';





class loginIn extends StatelessWidget {
  const loginIn({super.key});



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
        automaticallyImplyLeading: false,
      ),
      
      
      body: Row(
        children: [
          //SizedBox(width: 30,),
          Expanded(flex: 1, 
          child: Container(child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                //color: Colors.black,
                child: Center(
                  child: Text("Авторизация",
                        style: const TextStyle(fontSize: 24),),
                ),
              ),
              SizedBox(height: 200),

              Expanded(
                flex: 1,
                child: Container(
                 // color: Colors.black,
                  child: ListView(

  children: <Widget>[
    Container(
  child:  TextFormField(
                    decoration:  InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20.0, color: Colors.black) ,
                  ),
    ),

    SizedBox(height: 20,),

  Container(
  child:  TextFormField(
                    decoration:  InputDecoration(labelText: "Пароль"),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20.0, color: Colors.black) ,
                  ),
    ),

    SizedBox(height: 20,),



   SizedBox(height: 40,),

  Container(
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width * 0.9,
                   decoration: BoxDecoration( 
                                                                   borderRadius: BorderRadius.circular(16),
                                                                   color: Color.fromRGBO(191, 218, 237, 1),
                                                                 ),
  child:  TextButton(
                                 style: ButtonStyle(
                                 foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  ),
                                 onPressed: () {Navigator.push(
                                                                                   context,
                                                                                   MaterialPageRoute(builder: (context) =>   FirstPage  ()),
                                                                                    );},
                                                                                      child: Text('Авторизоваться',
                                                                                       style: TextStyle(fontSize: 18)),
                                                                                                  )
    ),
    Container(

  child: Center(
    child: TextButton(
                                                                                                      style: ButtonStyle(
                                                                                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                                                                    ),
                                                                                                    onPressed: () {Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  login()),

                    );},
    child: Text('Нет аккаунта',
                       style: TextStyle(fontSize: 14,
                       color: Color.fromARGB(255, 0, 0, 0),
                       decoration: TextDecoration.underline,
                       decorationColor: Colors.grey,
                       )
                       ),
  ),
    ),
    ),


       SizedBox(height: 40,),

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

  ],
),
                ),
              )
          

            ],
          )
          ),
          ),
        ],
      
      ),
    );
  
  }
}