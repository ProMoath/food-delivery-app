import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Food Delivery"),
        backgroundColor: Color.fromRGBO(255, 15, 10,0.8),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      drawer:const Drawer(
        child: Center(
          child:Text("Home"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(24.0),
             child:Image.asset(
                 'assets/images/food_web_banner.jpg',
                height: 200,
               fit: BoxFit.cover,
             ),
           ),
          const SizedBox(height: 30),
          Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                  ),
                children: [
                Container(
                    decoration: BoxDecoration(
                    color: Colors.white
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Placeholder(
                            fallbackHeight: 80,
                          ),
                          SizedBox(height: 6.0),
                          Text('Burger',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '5\$',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold,
                                color:Colors.amber
                            ),
                          )
                        ],
                      ),
                    ),
                ),
                Container(
                    decoration: BoxDecoration(
                    color: Colors.white
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Placeholder(
                            fallbackHeight: 80,
                          ),
                          SizedBox(height: 6.0),
                          Text('Burger',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '5\$',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold,
                                color:Colors.amber
                            ),
                          )
                        ],
                      ),
                    ),
                ),
                Container(
                    decoration: BoxDecoration(
                    color: Colors.white
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Placeholder(
                            fallbackHeight: 80,
                          ),
                          SizedBox(height: 6.0),
                          Text('Burger',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '5\$',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold,
                                color:Colors.amber
                            ),
                          )
                        ],
                      ),
                    ),
                ),
                Container(
                    decoration: BoxDecoration(
                    color: Colors.white
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Placeholder(
                            fallbackHeight: 80,
                          ),
                          SizedBox(height: 6.0),
                          Text('Burger',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '5\$',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold,
                                color:Colors.amber
                            ),
                          )
                        ],
                      ),
                    ),
                ),
                ],
              ),
          )
        ],),
      )
      );
  }
}