import 'package:get/get.dart';

class NumberController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['txtCount']);
  }
}
