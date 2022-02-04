import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigate(context);

    return Material(
      color: Colors.greenAccent.shade200,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/home.svg',
                width: 120,
                height: 120,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.grey.shade600, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _navigate(BuildContext context) async{
    await Future.delayed(const Duration(
      seconds: 1,
    ));
    Navigator.of(context).pushReplacementNamed('/counter');
  }
}
