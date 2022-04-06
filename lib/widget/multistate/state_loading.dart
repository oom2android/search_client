import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StateLoading extends StatelessWidget {
  const StateLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Container(
        height: 300,
        width: 300,
        alignment: Alignment.center,
        child: Column(
          children: [
            Lottie.asset(
              'assets/lottie/lottie_loading.json',
              width: 300,
              height: 300,
            ),
          ],
        ),
      )),
    );
  }
}
