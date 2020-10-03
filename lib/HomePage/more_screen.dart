import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "More",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 0.25,
          ),
        ),
      ),
      body: Column(
        children: [
          getBigDivider(context),
          _buildMenuView(icon: Icons.star_border, title: "Rate Us"),
          getSmallLineDivider(context),
          _buildMenuView(icon: Icons.share, title: "Share"),
          getSmallLineDivider(context),
          _buildMenuView(icon: Icons.contact_mail, title: "feedback"),
          getBigDivider(context),
          _buildMenuView(
              icon: Icons.notifications_active, title: "Notification"),
          getSmallLineDivider(context),
          _buildMenuView(icon: Icons.priority_high, title: "Privacy Policy"),
          getSmallLineDivider(context),
          _buildMenuView(icon: Icons.title, title: "Terms & Condition"),
          getSmallLineDivider(context),
          _buildMenuView(icon: Icons.mail_outline, title: "Contact Us"),
          getBigDivider(context),
        ],
      ),
    );
  }

  _buildMenuView({IconData icon, String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 18),
      color: Colors.transparent,
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF111111),
            size: 23,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: TextStyle(color: Color(0xFF111111), fontSize: 16),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: Color(0xFF111111),
          )
        ],
      ),
    );
  }

  static getBigDivider(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      height: 22.0,
    );
  }

  static Widget getSmallLineDivider(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 0.5,
    );
  }
}
