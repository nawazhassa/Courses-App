import 'package:courses_app/imports.dart';
import '../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('home'),
      ),*/
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
          child: SafeArea(child: SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 3.h),
              ListTile(
                /*leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),*/
                title: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: primaryDark,
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text(
                  'Liza Rodriguez',
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.bold,
                    color: primaryDark
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),

            ],
          ),),

          )),

    );
  }
}