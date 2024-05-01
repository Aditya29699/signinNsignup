import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor:Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/fbg.png',
            fit:BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child:child!,
          ),
        ],
      ),
    );
  }
}
