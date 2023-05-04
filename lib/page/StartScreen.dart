import 'package:demo_shop_app/page/home_page.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //anh
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 150),
            child: const Image(
              image: AssetImage('assets/images/bunny.png'),
              width: 250,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver  grocery at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "We deliver  grocery at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "MyFont", fontSize: 16, color: Colors.grey),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 56,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),));
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  backgroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.blueAccent),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'MyFont', fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
