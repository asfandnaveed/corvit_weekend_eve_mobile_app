import 'package:corvit_weekend_eve/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   final Controller controller = Get.find();


  double width =0;
  double height = 0;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=2758&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                width: width,
                height: 300,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                    'Home Interior ${controller.x.value}',
                  style: GoogleFonts.abel(
                    fontSize: 35,
                    color: Colors.white
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                      child: Text('Call Us'),
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Ohio Hotel',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                    ),
                    Text(
                        '24 Wall Street Apt 5 , New York',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: width *0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      )
                    ),
                  )
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: width *0.7,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey
                            )
                        )
                    ),
                  )
              ),
            ],
          ),
          Image.asset(
            'assets/images/perfume.png',
            width: 100,

          ),
          Lottie.asset(
            'assets/animation/music.json',
            height: 200
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.grey.shade300,
        padding: EdgeInsets.all(15),
        width: width,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '100 \$',
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Book This Room',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
