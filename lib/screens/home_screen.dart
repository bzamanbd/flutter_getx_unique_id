import 'package:flutter/material.dart';
import 'package:flutter_getx_unique_id/getxControllers/number_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({Key? key, required this.title}) : super(key: key);

  NumberController numberController = Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<NumberController>(
              id: 'txtCount', //only this value will be changed because here the "Unique Id" is used.
              builder: (controller)=>
              Text(
              'The Current Number is : ${controller.count}',
              textScaleFactor: 1.2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GetBuilder<NumberController>(
              builder: (controller)=> Text(
                'The Current Number is : ${controller.count}',
                textScaleFactor: 1.2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: ()=>numberController.increment(),
                child: const Text(
                  'Next Number',
                  textScaleFactor: 1.2,
                ))
          ],
        ),
      ),
    );
  }
}
