import 'package:ar_project_ui/navbar_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  Widget item({required Image child, required Function onPressed}) {
    return CupertinoButton(
      onPressed: onPressed(),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: child,
      ),
    );
  }

  BoxDecoration decoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Color(0xffBE6CFF),
        Color(0xff2ED2E9),
      ],
    ),
  );

  Widget appBar = Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          RichText(
              text: const TextSpan(
            text: "",
            style: TextStyle(fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                text: "Оживи\nУтк",
                // textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: " у",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.amber,
                ),
              ),
            ],
          )),
          const SizedBox(
            width: 28,
            height: 100,
          ),
          Positioned(
            top: 0,
            right: -36,
            child: Image.asset(
              'assets/images/duck.png',
              height: 100,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: NavbarButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.cube_outline,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: NavbarButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.qr_code_outline,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
      // appBar: AppBar(),
      body: Container(
        decoration: decoration,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                appBar,
                const Expanded(child: SizedBox()),
                SizedBox(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      viewportFraction: 0.65,
                      aspectRatio: 2.5 / 2,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      item(
                        child: Image.asset("assets/images/dron.png"),
                        onPressed: () {
                          //TODO: implement logic
                        },
                      ),
                      item(
                        child: Image.asset("assets/images/duck.png"),
                        onPressed: () {
                          //TODO: implement logic
                        },
                      ),
                      item(
                        child: Image.asset(
                          "assets/images/unicorn.png",
                          width: 100,
                        ),
                        onPressed: () {
                          //TODO: implement logic
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 55 + 16,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
