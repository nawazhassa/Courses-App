import 'package:courses_app/imports.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('This is the Profile Screen'),
      ),
    );
  }
}