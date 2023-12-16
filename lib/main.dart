import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:corvit_weekend_eve/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 4000),
          childWidget: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/perfume.png'),
          ),
        nextScreen: MyApp(),
      ),
    );
  }
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              /// Menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Social',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Icon(
                      Icons.menu_rounded
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              /// Stories Part
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// Posts
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          width: 55,
                          height: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jenny Wilson',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('2h'),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1695653420505-19343dd89ac1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '),
                  ),

                  ElevatedButton(
                    onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>LoginScreen() ) );

                    },
                    child: Text(
                        'Next Screen'
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

