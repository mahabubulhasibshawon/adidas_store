import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modals/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Text(
              'My Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          const SizedBox(height: 10,),

          Expanded(child: ListView.builder(itemBuilder: (context, index) {

          },
          ),
          )
        ],
      ),
    )
    );
  }
}
