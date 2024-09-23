import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

  RxInt counter = 0.obs;
  var textController = TextEditingController().obs;

  increment(){
    counter.value++;
    textController.value.text = counter.value.toString();
}
  decrement(){
    if(counter.value > 0){
      counter.value--;
      textController.value.text = counter.value.toString();
    }
  }
}