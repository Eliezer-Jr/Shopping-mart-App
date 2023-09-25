import 'package:flutter/material.dart';
import 'package:shopping_mart/payment_methods_screen.dart';
import 'package:shopping_mart/personal_info_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/user_avatar.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ahorlu Eliezer Mawuli Jr.',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ahorlueliezer@gmail.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 32.0,
            ),
            Text(
              'Account Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
  leading: Icon(Icons.person),
  title: Text('Personal Information'),
  onTap: () {
    // Navigate to the personal information screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PersonalInfoScreen(),
      ),
    );
  },
),
ListTile(
  leading: Icon(Icons.payment),
  title: Text('Payment Methods'),
  onTap: () {
    // Navigate to the payment methods screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentMethodsScreen(),
      ),
    );
  },
),

            Divider(
              color: Colors.grey,
              height: 32.0,
            ),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('General'),
              onTap: () {
                // Navigate to the general settings screen
                // You can implement this navigation as needed
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy & Security'),
              onTap: () {
                // Navigate to the privacy and security settings screen
                // You can implement this navigation as needed
              },
            ),
          ],
        ),
      ),
    );
  }
}
