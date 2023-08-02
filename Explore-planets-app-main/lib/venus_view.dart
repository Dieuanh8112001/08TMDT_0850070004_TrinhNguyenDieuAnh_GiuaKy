import 'package:flutter/material.dart';


class VenusView extends StatelessWidget {
  const VenusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/itme.jpg', fit: BoxFit.cover,),
          ),
          // CustomBox(
          //   borderRadius: BorderRadius.circular(32),
          //   child: const Column(children: [
          //     CustomText(
          //         text: "Dieu Anh",
                 // alignment: Alignment.topRight,
                  //fontWeight: FontWeight.bold,
                  //fontSize: 40
              // ),
              // SizedBox(
              //   height: 5,
              // ),
              // CustomText(
              //   text:
              //       "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty.",
              //   textAlign: TextAlign.start,
              //   fontWeight: FontWeight.w300,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // CustomText(
              //   text:
              //       "Venus orbits the Sun every 224.7 Earth days.",
              //   textAlign: TextAlign.start,
              //   fontWeight: FontWeight.w300,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // CustomText(
              //   text:
              //       "Its proximity to Earth has made Venus a prime target for early interplanetary exploration. It was the first planet beyond Earth visited by a spacecraft (Mariner 2 in 1962), and the first to be successfully landed on (by Venera 7 in 1970).",
              //   textAlign: TextAlign.start,
              //   fontWeight: FontWeight.w300,
              // ),
          //   ]),
          // ),
        ],
      ),
    );
  }
}
