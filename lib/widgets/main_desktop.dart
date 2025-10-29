import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: screenHeight / 1.2,
                constraints: BoxConstraints(minHeight: 350.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hi,\nI'm Bentley Williams\nA Flutter Developer",
                          style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        SizedBox(
                          width: 270,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 41, 95, 255)),
                            child: const Text(
                              'Get in touch', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: CustomColor.whitePrimary)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/senior_pic_transparent_flutter_website.png',
                      width: screenWidth / 2,
                    ),
                  ],
                ),
              );
  }
}