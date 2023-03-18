import 'package:flutter/material.dart';
import 'package:mytestg/Login/view/container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Containers(
              itemsSvg: 'asset/svg/google-color-svgrepo-com.svg',
              items: 'Login with Google',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Containers(
              itemsSvg: 'asset/svg/facebook-svgrepo-com.svg',
              items: 'Login with FaceBook',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Containers(
              itemsSvg: 'asset/svg/mail-svgrepo-com.svg',
              items: 'Login with Google',
            ),
          ),
        ],
      ),
    );
  }
}
