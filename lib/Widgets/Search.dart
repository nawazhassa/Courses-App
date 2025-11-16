import 'package:courses_app/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Search Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Search Screen!'),
      ),
    );
  }
}