import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/controller.dart';

class CartDetailScreen extends StatefulWidget {
  const CartDetailScreen({super.key});

  @override
  State<CartDetailScreen> createState() => _CartDetailScreenState();
}

class _CartDetailScreenState extends State<CartDetailScreen> {

  CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Scaffold(
            appBar: AppBar(),
            body:  Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Total Items in Cart: ${controller.counter.value}'),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  controller.decrement();
                  if(controller.counter.value == 0)Get.back();

                }, child: const Text('Remove items from Cart'))
              ],
            )));
      }
    );
  }
}
