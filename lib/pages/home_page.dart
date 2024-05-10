import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/utils/responsive.dart';
import 'package:flutter_responsive_app/widgets/circle.dart';
import 'package:flutter_responsive_app/widgets/icon_container.dart';
import 'package:flutter_responsive_app/widgets/login_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -(pinkSize) * (responsive.isTablet ? 0.45 : 0.4),
                  right: -(pinkSize) * (responsive.isTablet ? 0.25 : 0.2),
                  child: Circle(
                    size: pinkSize,
                    colors: const [
                      Colors.pinkAccent,
                      Colors.pink,
                    ],
                  ),
                ),
                Positioned(
                  top: -(orangeSize) * (responsive.isTablet ? 0.5 : 0.55),
                  left: -(orangeSize) * (responsive.isTablet ? 0.13 : 0.15),
                  child: Circle(
                    size: orangeSize,
                    colors: const [
                      Colors.orange,
                      Colors.deepOrangeAccent,
                    ],
                  ),
                ),
                Positioned(
                  top: pinkSize * (responsive.isTablet ? 0.3 : 0.35),
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(responsive.isTablet ? 13 : 20),
                      ),
                      SizedBox(
                        height: responsive.dp(responsive.isTablet ? 2.5 : 3),
                      ),
                      Text(
                        'Hello Again \n Welcome Back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(1.7),
                        ),
                      ),
                    ],
                  ),
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
