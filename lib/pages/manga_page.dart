import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MangaPage extends StatelessWidget {
  const MangaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('Manga Page'),
        ),
        backgroundColor: const Color(0xFFF5BFFF).withOpacity(0.1),
                systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          " ",
          textAlign: TextAlign.left,
        ),
          ),
        ),
      ),
    );
  }
}
