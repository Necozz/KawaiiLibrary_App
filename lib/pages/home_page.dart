import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Home'),
          
        ),
        backgroundColor: const Color.fromARGB(255, 245, 191, 255).withOpacity(0.1),
                systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
            children: [
            Expanded(
              child: Center(
              child: Opacity(
                opacity: 0.3,
                child: Icon(
                Icons.home_rounded,
                color: Colors.purple[50],
                size: 300.0,
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
