import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/utils/responsive.dart';
import 'package:flutter_responsive_app/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    print(responsive.dp(10));

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Column(
          children: [
            InputText(
              textType: TextInputType.emailAddress,
              label: 'Email Address',
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
            ),
            SizedBox(height: responsive.dp(2)),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InputText(
                      obscuredText: true,
                      label: 'Password',
                      borderEnable: false,
                      fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        elevation: MaterialStatePropertyAll(0),
                        surfaceTintColor:
                            MaterialStatePropertyAll(Colors.transparent),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              responsive.dp(responsive.isTablet ? 1.2 : 1.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 15)),
                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                ),
                onPressed: () {},
                child: Text(
                  'Sing In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: responsive.dp(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to friend Desi?',
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 0.9 : 1.5),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    elevation: MaterialStatePropertyAll(0),
                    surfaceTintColor:
                        MaterialStatePropertyAll(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.7),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsive.dp(10),
            )
          ],
        ),
      ),
    );
  }
}
