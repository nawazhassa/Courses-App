/*
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
            */
/*textTheme: GoogleFonts.interTextTheme(), // Optional: Inter as fallback
            useMaterial3: true,
            primarySwatch: Colors.blue,*//*

          ),
          home: const LoginScreen(),
        );
      },
    );
  }
}*/









import 'imports.dart';
import 'widget_imports.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),  // Your app’s design base size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          /// 🔥 Responsive Framework integrated here
        /*  builder: (context, widget) => ResponsiveBreakpoints.builder(
            child: widget!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),*/

          theme: ThemeData(
            fontFamily: 'inter',
          ),

          home: const LoginScreen(),
        );
      },
    );
  }
}
