import 'imports.dart';
import 'widget_imports.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956), // Tumhare design ka base size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // Custom Font 'momo' + Fallback to Google Font
            fontFamily: 'inter',
            /*textTheme: GoogleFonts.interTextTheme(), // Optional: Inter as fallback
            useMaterial3: true,
            primarySwatch: Colors.blue,*/
          ),
          home: const LoginScreen(),
        );
      },
    );
  }
}