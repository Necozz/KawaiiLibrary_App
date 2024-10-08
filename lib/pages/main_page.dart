import 'package:flutter/material.dart';
import 'package:neko/pages/home_page.dart';
import 'package:neko/pages/anime_page.dart';
import 'package:neko/pages/manga_page.dart';

void main() {
  runApp(const MainPageApp());
}

class MainPageApp extends StatelessWidget {
  const MainPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor:
            Colors.deepPurple, // Set the scaffold background color
      ),
      home: const MainPage(),
    );
  }
}

/// This function takes a list of integers and returns a new list with each
/// integer incremented by one.
///
/// - Parameter numbers: A list of integers to be incremented.
/// - Returns: A new list of integers where each integer is incremented by one.
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

/// This function takes a list of integers and returns a new list containing
/// only the even numbers from the original list.
///
/// The function iterates through each element in the input list, checks if
/// the element is even, and if so, adds it to the result list.
///
/// - Parameter numbers: A list of integers to filter.
/// - Returns: A new list containing only the even integers from the input list.
class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const HomePage(),
    const AnimePage(),
    const MangaPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, // Set the background color of the Scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentPage = 0;
          });
        },
        backgroundColor: const Color(0xFFF5BFFF).withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(Icons.home, color: Colors.purple[100]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 70,
        color: const Color(0xFFF5BFFF).withOpacity(0.1),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'anime',
                icon: const Icon(Icons.tv_rounded),
                color: Colors.purple[100],
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
              ),
              const Spacer(),
              IconButton(
                tooltip: 'manga',
                icon: const Icon(Icons.book_rounded),
                color: Colors.purple[100],
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This function takes a list of integers and returns the sum of all elements in the list.
///
/// The function iterates through each element in the list, adding each element to a running total.
///
/// Example:
/// ```dart
/// List<int> numbers = [1, 2, 3, 4];
/// int result = sum(numbers); // result will be 10
/// ```
///
/// - Parameter numbers: A list of integers to be summed.
/// - Returns: The sum of all integers in the list.
