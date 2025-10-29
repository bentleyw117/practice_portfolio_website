import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return CustomColor.logoGradient.createShader(
            Offset.zero & bounds.size,
          );
        },
        child: Text(
          'BW',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            //decoration: TextDecoration.underline
          ),
        ),
      ),
    );
  }
}
