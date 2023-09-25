import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Your Shopping Profile',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20.0),
            Divider(
              color: Colors.grey[400],
              thickness: 2.0,
              height: 2.0,
            ),
            SizedBox(height: 20.0),
            ShoppingInfoItem(
              icon: Icons.person,
              label: 'Full Name',
              value: 'Ahorlu Eliezer Mawuli Jr.',
            ),
            ShoppingInfoItem(
              icon: Icons.email,
              label: 'Email',
              value: 'ahorlueliezer@gmail.com',
            ),
            ShoppingInfoItem(
              icon: Icons.phone,
              label: 'Phone Number',
              value: '+233 53 271 3417',
            ),
            ShoppingInfoItem(
              icon: Icons.home,
              label: 'Address',
              value: 'Accra, Ghana',
            ),
            ShoppingInfoItem(
              icon: Icons.calendar_today,
              label: 'Date of Birth',
              value: 'March 6th 2003',
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingInfoItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final String value;

  ShoppingInfoItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  _ShoppingInfoItemState createState() => _ShoppingInfoItemState();
}

class _ShoppingInfoItemState extends State<ShoppingInfoItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap action here
      },
      onHover: (hovering) {
        setState(() {
          isHovered = hovering;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: isHovered
              ? Border.all(color: Colors.blue, width: 2.0)
              : Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: Colors.blue,
              size: 24.0,
            ),
            SizedBox(width: 8.0),
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Spacer(),
            Text(
              widget.value,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
