/// This file defines the `MangaPage` and `ContainerDetailPage` widgets for a Flutter application.
///
/// The `MangaPage` widget displays a page with information about manga and several containers
/// that the user can tap to navigate to detailed pages for each container.
///
/// The `ContainerDetailPage` widget displays a detailed page for a specific container.
///
/// ## Classes
///
/// - `MangaPage`: A stateless widget that represents the main manga page.
/// - `ContainerDetailPage`: A stateless widget that represents the detail page for a specific container.
///
/// ## `MangaPage`
///
/// The `MangaPage` widget contains:
/// - An `AppBar` with the title "Manga Page".
/// - A `SingleChildScrollView` containing a `Column` with:
///   - A description of manga.
///   - Several rows of containers that the user can tap to navigate to the `ContainerDetailPage`.
///
/// ### Methods
///
/// - `_navigateToContainer(BuildContext context, String containerName)`: Navigates to the `ContainerDetailPage` for the specified container.
///
/// ## `ContainerDetailPage`
///
/// The `ContainerDetailPage` widget contains:
/// - An `AppBar` with the title set to the container name.
/// - A `Center` widget displaying the details for the specified container.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MangaPage extends StatelessWidget {
  const MangaPage({super.key});

  void _navigateToContainer(BuildContext context, String containerName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContainerDetailPage(containerName: containerName),
      ),
    );
  }

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
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Manga are comics or graphic novels originating from Japan. Most manga conform to a style developed in Japan in the late 19th century, and the form has a long prehistory in earlier Japanese art.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 1'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.pinkAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 1')),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 2'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.purpleAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 2')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 3'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.blueAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 3')),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 4'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.greenAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 4')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 5'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.yellowAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 5')),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _navigateToContainer(context, 'Container 6'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 250,
                            color: Colors.orangeAccent,
                            margin: const EdgeInsets.all(8.0),
                            child: const Center(child: Text('Container 6')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerDetailPage extends StatelessWidget {
  final String containerName;

  const ContainerDetailPage({super.key, required this.containerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(containerName),
      ),
      body: Center(
        child: Text('Details for $containerName'),
      ),
    );
  }
}
