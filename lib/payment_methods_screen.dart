import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Methods'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Manage Payment Methods',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('**** **** **** 1234'),
              subtitle: Text('Visa Card'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Handle deleting payment method
                },
              ),
            ),
            Divider(height: 16.0),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('**** **** **** 5678'),
              subtitle: Text('MasterCard'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Handle deleting payment method
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add a new payment method
              },
              child: Text('Add New Payment Method'),
            ),
          ],
        ),
      ),
    );
  }
}
