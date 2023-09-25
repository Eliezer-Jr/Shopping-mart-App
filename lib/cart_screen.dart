import 'package:flutter/material.dart';
import 'package:shopping_mart/main.dart';

class CartScreen extends StatefulWidget {
  final List<Product> cart;

  CartScreen({required this.cart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void removeItem(int index) {
    setState(() {
      widget.cart.removeAt(index);
    });
  }

  double calculateTotalAmount() {
    double total = 0.0;
    for (Product product in widget.cart) {
      total += product.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (BuildContext context, int index) {
                return CartItem(
                  product: widget.cart[index],
                  remove: () {
                    removeItem(index);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Amount: \$${calculateTotalAmount().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final Product product;
  final VoidCallback remove;

  CartItem({required this.product, required this.remove});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        product.imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(product.name),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: Icon(Icons.remove_shopping_cart),
        onPressed: remove,
      ),
    );
  }
}
