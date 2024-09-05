import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_notifier.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    final total = ref.watch(cartTotalProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: cartProducts.map((product){
                return Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Image.asset(product.image,height: 60,width: 60,),
                      Text(product.title),
                      Expanded(child: SizedBox()),
                      Text('\$ ${product.price.toString()}'),
                    ],
                  ),
                );
              }).toList(),
            ),
            Text('Total Price = \$$total'),
          ],
        ),
      ),
    );
  }
}