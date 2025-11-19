/*
import '../constants/colors.dart';
import 'package:courses_app/imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradient),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: primaryDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5.h),

                      Text(
                        'Liza Rodriguez',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: primaryDark,
                        ),
                      ),
                    ],
                  ),

                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                SizedBox(height: 12.h),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover courses!',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.h),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.r),
                    */
/*boxShadow: [
                         BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],*//*

                  ),

                  child: Row(
                    children: [
                      Icon(Icons.search, color: primary, size: 35.sp),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: primaryDark,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Search courses...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),





                */
/*Container(
                  padding: EdgeInsets.all(13.w),
                  margin: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: scaffoldBg,
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.ac_unit_rounded,
                        color: primary,
                        size: 30.sp,
                      ),
                      Text('Programming', style: TextStyle(color: primaryDark,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),*//*



                Container(
                  height: 110.h,
                  child:
                  ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        horizontalCard(icon: Icons.code, title: 'Programming',),
                        horizontalCard(icon: Icons.smart_toy, title: 'AI & ML',),
                        horizontalCard(icon: Icons.developer_mode, title: 'Development',),
                        horizontalCard(icon: Icons.brush, title: 'Design',),
                        horizontalCard(icon: Icons.business, title: 'Business',),
                        horizontalCard(icon: Icons.health_and_safety, title: 'Health',),
                      ],

                )


                )




              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget horizontalCard({
    required IconData icon,
    required String title,
  }){
    return Container(
      width: 120.w,
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.symmetric(horizontal: 3,vertical:  12.w),
      decoration: BoxDecoration(
        color: scaffoldBg,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.ac_unit_rounded,
            color: primary,
            size: 30.sp,
          ),
          Text(title, style: TextStyle(color: primaryDark,fontWeight: FontWeight.bold),),
        ],
      ),
    );
}





}

*/




import '../constants/colors.dart';
import 'package:courses_app/imports.dart';
import 'package:courses_app/widget_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: primaryDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Liza Rodriguez',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: primaryDark,
                        ),
                      ),
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),

                SizedBox(height: 12.h),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover courses!',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.h),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: primary, size: 35.sp),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: primaryDark,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Search courses...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: 1.h), // Added spacing

                // Horizontal Scroller with Left Padding
                Container(
                  // color: primaryDark,
                  height: 110.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15.w, right: 5.w), // 👈 LEFT PADDING ADDED
                    physics: BouncingScrollPhysics(), // Smooth scrolling
                    children: [
                      horizontalCard(icon: Icons.code, title: 'Programming'),
                      horizontalCard(icon: Icons.smart_toy, title: 'AI & ML'),
                      horizontalCard(icon: Icons.developer_mode, title: 'Development'),
                      horizontalCard(icon: Icons.brush, title: 'Design'),
                      horizontalCard(icon: Icons.business, title: 'Business'),
                      horizontalCard(icon: Icons.health_and_safety, title: 'Health'),
                    ],
                  ),
                ),

                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Courses',
                        style: TextStyle(
                          fontSize: 22.w,
                          color: primaryDark,
                          fontWeight: FontWeight.bold,
                        ),),

                      Text('View All',
                        style: TextStyle(
                          fontSize: 16.w,
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),

              /*  Courses1Card(
                  imagePath: 'assets/images/images2.jpg',
                  title: 'System Design',
                  lessons: '12 Lessons',
                  price: '\$40',
                  progress: 0.25,      // 25%
                  progressText: '20%',
                ),*/

                Container(
                  // color: primaryDark,
                  height: 300.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15.w, right: 5.w), // 👈 LEFT PADDING ADDED
                    physics: BouncingScrollPhysics(), // Smooth scrolling
                    children: [
                      Courses1Card(
                        imagePath: 'assets/images/images2.jpg',
                        title: 'System Design',
                        lessons: '12 Lessons',
                        price: '\$40',
                        progress: 0.25,      // 25%
                        progressText: '20%',
                      ), Courses1Card(
                        imagePath: 'assets/images/images2.jpg',
                        title: 'System Design',
                        lessons: '12 Lessons',
                        price: '\$40',
                        progress: 0.25,      // 25%
                        progressText: '20%',
                      ), Courses1Card(
                        imagePath: 'assets/images/images2.jpg',
                        title: 'System Design',
                        lessons: '12 Lessons',
                        price: '\$40',
                        progress: 0.25,      // 25%
                        progressText: '20%',
                      ), Courses1Card(
                        imagePath: 'assets/images/images2.jpg',
                        title: 'System Design',
                        lessons: '12 Lessons',
                        price: '\$40',
                        progress: 0.25,      // 25%
                        progressText: '20%',
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 20.h,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Continue Learning',
                        style: TextStyle(
                          fontSize: 20.w,
                          color: primaryDark,
                          fontWeight: FontWeight.bold,
                        ),),

                      Text('View All',
                        style: TextStyle( fontSize: 16.w,
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),),

                    ],
                  ),
                ),

                SizedBox(height: 8.h),


                      CourseCard1(
                        imagePath: 'assets/images/images.jpg',
                        title: 'Software Development',
                        subtitle: '3/8 Lessons',
                        progress: '25%',
                      ),
                      SizedBox(width: 12.w),
                      CourseCard1(
                        imagePath: 'assets/images/images2.jpg',
                        title: 'UI/UX Design',
                        subtitle: '2/6 Lessons',
                        progress: '33%',
                      ),
                      SizedBox(width: 12.w),
                      CourseCard1(
                        imagePath: 'assets/images/images1.jpg',
                        title: 'Data Science',
                        subtitle: '5/10 Lessons',
                        progress: '50%',
                      ),










              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalCard({
    required IconData icon,
    required String title,
  }) {
    return Container(
      width: 120.w,
      padding: EdgeInsets.all(8.w),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h), // Fixed margin values
      decoration: BoxDecoration(
        color: scaffoldBg,
        borderRadius: BorderRadius.circular(18.r),
       /* boxShadow: [ // Optional: Add shadow for better look
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],*/
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
        children: [
          Icon(
            icon, // 👈 Use the passed icon parameter
            color: primary,
            size: 30.sp,
          ),
          SizedBox(height: 8.h), // Added spacing
          Text(
            title,
            style: TextStyle(
              color: primaryDark,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp, // Added font size
            ),
          ),
        ],
      ),
    );
  }
}










