import 'package:be_my_val/accept.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/kalpli.gif"),
          const Text(
            "Will you be my valentine?",
            style: TextStyle(fontSize: 25),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                yesButton(),
                noButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  double height = 70;
  Widget yesButton() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AcceptPage(),
        ));
      },
      child: Container(
        height: height,
        width: height * 2,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)),
        child: const Center(
            child: Text(
          "Yes",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  bool isNoVisible = true;

  Widget noButton() {
    return isNoVisible
        ? InkWell(
            onTap: () {
              setState(() {
                if (height * 1.5 > MediaQuery.of(context).size.width * .5) {
                  isNoVisible = false;
                } else {
                  height *= 1.5;
                }
              });
            },
            child: Container(
              height: 70,
              width: 70 * 2,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "No",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        : Container();
  }
}
