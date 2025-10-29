import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';
import 'package:my_portfolio_website/constants/size.dart';
import 'package:my_portfolio_website/styles/style.dart';
import 'package:my_portfolio_website/widgets/drawer_mobile.dart';
import 'package:my_portfolio_website/widgets/header_desktop.dart';
import 'package:my_portfolio_website/widgets/header_mobile.dart';
import 'package:my_portfolio_website/widgets/main_desktop.dart';
import 'package:my_portfolio_website/widgets/main_mobile.dart';
import 'package:my_portfolio_website/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                MainMobile(),
              // SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // PROJECTS
              Container(height: 500, width: double.maxFinite),
              // CONTACTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // FOOTER
              Container(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
