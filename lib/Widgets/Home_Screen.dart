import 'package:courses_app/imports.dart';
import '../constants/colors.dart';
import 'package:courses_app/widget_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      /* appBar: AppBar(
        title: Text('home'),
      ),*/
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: primaryGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 3.h),
                // ListTile(
                //   contentPadding: EdgeInsets.zero,
                //   leading: CircleAvatar(
                //   radius: 30,
                //   backgroundImage: AssetImage('assets/images/profile.jpg'),
                // ),
                //   title: Text(
                //     'Welcome Back!',
                //     style: TextStyle(
                //       fontSize: 16.sp,
                //       color: primaryDark,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //
                //   subtitle: Text(
                //     'Liza Rodriguez',
                //     style: TextStyle(
                //       fontSize: 27.sp,
                //       fontWeight: FontWeight.bold,
                //       color: primaryDark,
                //     ),
                //   ),
                //   trailing: CircleAvatar(
                //     radius: 25,
                //     backgroundImage: AssetImage('assets/images/profile.jpg'),
                //   ),
                // ),
                ListTile(
                  contentPadding: EdgeInsets.zero, // remove default padding

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

                      SizedBox(height: 5.h), // 👈 yahan control karo spacing

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

                SizedBox(height: 15.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your progress is amazing!',
                      style: TextStyle(
                        fontSize: 20.w,
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5.h),


                    Row(
                      children: [


                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 4,
                            color: Colors.white,
                            shadowColor: Colors.black12,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),

                            child: Padding(
                              padding: EdgeInsets.all(16.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 25.w,
                                        backgroundColor: secondary,
                                        child: Icon(
                                          Icons.lock_clock,
                                          color: primary,
                                          size: 30.w,
                                        ),
                                      ),

                                      /*Text(
                                       "Your progress is amazing!",
                                       style: TextStyle(
                                         fontSize: 20.sp,
                                         fontWeight: FontWeight.bold,
                                         color: primary,
                                       ),
                                     ),*/
                                      // SizedBox(width: 90.w),

                                      Text(
                                        "12",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: primary,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Text('Hours Learned',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: primaryDark,

                                        fontWeight: FontWeight.bold
                                        ,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 4,
                            color: Colors.white,
                            shadowColor: Colors.black12,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),

                            child: Padding(
                              padding: EdgeInsets.all(16.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 25.w,
                                        backgroundColor: secondary,
                                        child: Icon(
                                          Icons.lock_clock,
                                          color: primary,
                                          size: 30.w,
                                        ),
                                      ),

                                      /*Text(
                                       "Your progress is amazing!",
                                       style: TextStyle(
                                         fontSize: 20.sp,
                                         fontWeight: FontWeight.bold,
                                         color: primary,
                                       ),
                                     ),*/
                                      // SizedBox(width: 90.w),

                                      Text(
                                        "12",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: primary,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Text('Lessons Completed',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: primaryDark,

                                        fontWeight: FontWeight.bold
                                        ,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),
                  ],
                ),


                SizedBox(height: 20.h),


                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
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

                    SizedBox(height: 8.h),

                    SizedBox(
                      height: 80.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CourseCard(
                            imagePath: 'assets/images/images.jpg',
                            title: 'Software Development',
                            subtitle: '3/8 Lessons',
                            progress: '25%',
                          ),
                          SizedBox(width: 12.w),
                          CourseCard(
                            imagePath: 'assets/images/images2.jpg',
                            title: 'UI/UX Design',
                            subtitle: '2/6 Lessons',
                            progress: '33%',
                          ),
                          SizedBox(width: 12.w),
                          CourseCard(
                            imagePath: 'assets/images/images1.jpg',
                            title: 'Data Science',
                            subtitle: '5/10 Lessons',
                            progress: '50%',
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 20.h),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Courses',
                          style: TextStyle(
                            fontSize: 20.w,
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
                    SizedBox(height: 8.h),



                   /* Container(
                      padding: EdgeInsets.all(10.w),
                      // height: 300.h,
                      width: 400.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(width: 1.w, color: Colors.grey.shade300),
                    ),
                      // child: Image.asset('assets/images/images2.jpg', fit: BoxFit.cover,),
                    
                    
                    
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                          ),
                          child: Image.asset('assets/images/images2.jpg',
                            fit: BoxFit.cover, height: 180.h,
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        
                        ListTile(
                          // contentPadding: EdgeInsets.zero, // remove default padding

                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'System Design',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: primaryDark,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 5), // 👈 yahan control karo spacing

                              Text(
                                '12 Lessons',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: primaryDark,
                                ),
                              ),
                            ],
                          ),

                          trailing: Text('\$40',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.w,color: green  ))

                        ),



                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h), // card ke andar spacing
                          child: Row(
                            children: [
                              SizedBox(
                                width: 40.w, // fixed width for percentage text
                                child: Text(
                                  '20%',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: primary,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w), // spacing between text and progress bar
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.r),
                                  child: LinearProgressIndicator(
                                    value: 0.25, // 25% progress
                                    backgroundColor: Colors.grey.shade200,
                                    color: primary,
                                    minHeight: 8.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),






                      ],
                    ),
                    
                    ),*/


                    CoursesCard(
                      imagePath: 'assets/images/images2.jpg',
                      title: 'System Design',
                      lessons: '12 Lessons',
                      price: '\$40',
                      progress: 0.25,      // 25%
                      progressText: '20%',
                    ),




                    SizedBox(height: 15.h),



                    CoursesCard(
                      imagePath: 'assets/images/images.jpg',
                      title: 'Software Development',
                      lessons: '18 Lessons',
                      price: '\$40',
                      progress: 0.50,      // 25%
                      progressText: '50%',
                    ),




                    SizedBox(height: 15.h),


                    CoursesCard(
                      imagePath: 'assets/images/images1.jpg',
                      title: 'System Design',
                      lessons: '19 Lessons',
                      price: '\$40',
                      progress: 0.15,      // 25%
                      progressText: '10%',
                    ),











                    /*Container(
                      width: 280.w, // card width
                      height: 80.h, // card height
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Image / Icon
                          Container(
                            width: 65.w,
                            height: 65.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'), // tumhari image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 12.w),

                          // Text + Progress
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Software Development',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text(
                                      '3/8 Lessons',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    Text(
                                      '25%',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),

                                  ],
                                )

                               */


                    /* ClipRRect(
                                  borderRadius: BorderRadius.circular(6.r),
                                  child: LinearProgressIndicator(
                                    value: 0.25, // 25%
                                    backgroundColor: Colors.grey.shade200,
                                    color: Colors.blue,
                                    minHeight: 6.h,
                                  ),
                                ),*/

                  ],
                ),





                /*SizedBox(
                  height: 150.h, // Card ke liye fixed height
                  child: ListView(
                    scrollDirection: Axis.horizontal, // 👈 horizontal scrolling
                    children: [
                      SizedBox(width: 0), // left padding (optional)

                      buildStatCard(
                        icon: Icons.lock_clock,
                        label: 'Hours Learned',
                        value: '12',
                      ),

                      SizedBox(width: 15.w), // spacing between cards

                      buildStatCard(
                        icon: Icons.school,
                        label: 'Lessons Completed',
                        value: '12',
                      ),  SizedBox(width: 15.w), // spacing between cards

                      buildStatCard(
                        icon: Icons.school,
                        label: 'Lessons Completed',
                        value: '12',
                      ),  SizedBox(width: 15.w), // spacing between cards

                      buildStatCard(
                        icon: Icons.school,
                        label: 'Lessons Completed',
                        value: '12',
                      ),  SizedBox(width: 15.w), // spacing between cards

                      buildStatCard(
                        icon: Icons.school,
                        label: 'Lessons Completed',
                        value: '12',
                      ),

                      SizedBox(width: 0), // right padding (optional)
                    ],
                  ),
                ),*/



              ],

            ),
          ),
        ),
      ),
    );
  }



  Widget buildStatCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25.w,
                  backgroundColor: secondary,
                  child: Icon(
                    icon,
                    color: primary,
                    size: 30.w,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: primary,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                color: primaryDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }







}
