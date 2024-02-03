import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:corvit_weekend_eve/ChatScreen/chatScreen.dart';
import 'package:corvit_weekend_eve/LoginScreen/loginscreen.dart';
import 'package:corvit_weekend_eve/LoginScreen/registerScreen.dart';
import 'package:corvit_weekend_eve/controller/controller.dart';
import 'package:corvit_weekend_eve/firebase_options.dart';
import 'package:corvit_weekend_eve/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/productScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp( GetMaterialApp(
    home: SplashScreen(),
  ));
}


class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  
  Controller controller = Get.put(Controller());

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
        nextScreen: RegisterScreen(),
      ),
    );
  }
}




class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    final Controller controller = Get.put(Controller());

    int x = 0;

    double y = 6.7;

    String z = 'Hello';

    bool c = true;

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
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys '),
                  ),

                  ElevatedButton(
                    onPressed: (){

                      // Get.snackbar('Hello', 'Test Test Test');

                      // Get.changeTheme(ThemeData.dark());
                      
                      Get.to(Login(),transition:Transition.leftToRightWithFade );
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context)=>LoginScreen() ) );

                    },
                    child: Text(
                        'Next Screen'
                    ),
                  ),


                  Obx(() => Text(
                    '${controller.x.value}',
                    style: GoogleFonts.podkova(
                      fontSize: 25,
                    ),
                  ),
                  ),


                  ElevatedButton(
                      onPressed: (){
                        controller.x.value++;
                      },
                      child: Text('Add Number'),
                  ),

                  ElevatedButton(
                    onPressed: (){
                      final db = FirebaseDatabase.instance.ref();

                      // db.child('Students').child('Ahmed').child('Marks').push().set({
                      //   "subject":"38",
                      //
                      //
                      // });

                      db.child('Students').get().then((snapshot) => {

                        for(var items in snapshot.children){
                          debugPrint("SNAPSHOT DATA : ${items.value}"),
                        }

                      });


                    },
                    child: Text('Add Data Into Firebase'),
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

