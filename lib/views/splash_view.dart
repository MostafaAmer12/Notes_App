import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const NotesView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: size.height / 3,
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: size.height / 4,
                width: size.width / 2,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/notes.png",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height: size.height / 7,
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height / 60,
            ),
          ],
        ),
      ),
    );
  }
}
