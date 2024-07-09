import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/screen/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    GoToHomeScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover,
                opacity: .2)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splashlogo.png',
                width: size.width * .5,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Galaxy Gaming',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * .07,
                    color: Colors.white),
              ),
              Text(
                'Kottarakara, Kollam',
                style: GoogleFonts.adventPro(
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * .03,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> GoToHomeScreen(
    context,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (c) => const HomeScreen()));
  }
}
