import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';
import 'package:my_portfolio_website/styles/style.dart';
import 'package:my_portfolio_website/widgets/header_desktop.dart';
import 'package:my_portfolio_website/widgets/header_mobile.dart';
import 'package:my_portfolio_website/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          //HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {},
          ),
          // SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          // PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          // CONTACTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          // FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}