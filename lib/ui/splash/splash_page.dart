import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controller/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (ctr) =>  Scaffold(
        body: Center(
          child: RichText(text: const TextSpan(
            text: '',
            style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 40,),
            children:  <TextSpan>[
              TextSpan(text: 'Mac', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: 53,)),
              TextSpan(text: 'Bro', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w900,fontSize: 53,)),
              TextSpan(text: '\nFor clients',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: 21,)),
            ],
          ),),
        ),
      ),
    );
  }
}
