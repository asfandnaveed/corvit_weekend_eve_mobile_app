import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});


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
          Image.network(
            'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=2758&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            width: width,
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
