import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';
import 'package:my_portfolio_website/constants/size.dart';
import 'package:my_portfolio_website/constants/skill_items.dart';
import 'package:my_portfolio_website/styles/style.dart';
import 'package:my_portfolio_website/utils/project_utils.dart';
import 'package:my_portfolio_website/widgets/contact_section.dart';
import 'package:my_portfolio_website/widgets/custom_text_field.dart';
import 'package:my_portfolio_website/widgets/drawer_mobile.dart';
import 'package:my_portfolio_website/widgets/footer.dart';
import 'package:my_portfolio_website/widgets/header_desktop.dart';
import 'package:my_portfolio_website/widgets/header_mobile.dart';
import 'package:my_portfolio_website/widgets/main_desktop.dart';
import 'package:my_portfolio_website/widgets/main_mobile.dart';
import 'package:my_portfolio_website/widgets/project_card.dart';
import 'package:my_portfolio_website/widgets/projects_section.dart';
import 'package:my_portfolio_website/widgets/site_logo.dart';
import 'package:my_portfolio_website/widgets/skills_desktop.dart';
import 'package:my_portfolio_website/widgets/skills_mobile.dart';

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
              // title
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text(
                      'What I can do',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50),

                    // platform and skills
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      SkillsMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // PROJECTS
              const ProjectsSection(),

              // CONTACTS
              ContactSection(),

              // FOOTER
              Footer(),
            ],
          ),
        );
      },
    );
  }
}
