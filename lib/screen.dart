import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_cart/cart_screen.dart';
import 'package:shopping_cart/controller.dart';

class AddCartScreen extends StatefulWidget {
  const AddCartScreen({super.key});

  @override
  State<AddCartScreen> createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => const CartDetailScreen());
            },
            child: const Icon(Icons.shopping_cart_outlined),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            controller.decrement();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            child: const Center(child: Text('-')),
                            decoration: const BoxDecoration(color: Colors.black12),
                          )),
                      Container(
                        color: Colors.white,
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Text(
                            controller.counter.value.toString(),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            controller.increment();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            child: const Center(child: Text('+')),
                            decoration: const BoxDecoration(color: Colors.black12),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
