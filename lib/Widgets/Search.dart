/*
import 'package:courses_app/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// 🔹 TOP HERO IMAGE
          SizedBox(
            height: 290.h,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/images2.jpg",
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Container(
                  height: 290.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  top: 50.h,
                  left: 20.w,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.3),// or Colors.black.withOpacity(0.3)
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 20.sp),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20.h,  // 20 pixels from the bottom (using ScreenUtil for responsive sizing)
                  left: 20.w,    // 20 pixels from the left
                  right: 20.w,   // 20 pixels from the right
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, // space evenly between two chips
                    children: [
                      _infoChip(
                        Icons.timer_sharp,
                        "32 Hours",
                      ),
                      _infoChip(Icons.play_lesson_outlined, "12 Lessons",),
                    ],
                  ),
                ),

              ],
            ),
          ),

          /// 🔹 WHITE CONTENT AREA
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.r),
                  topRight: Radius.circular(35.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Systems Design",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "\$30",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "System Design is the process of designing architecture, components, and interfaces to meet end-user requirements. This course helps you learn system design from basics to advanced level.",
                      style: TextStyle(fontSize: 14.sp, height: 1.4, color: Colors.black54),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Lessons",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15.h),
                    _lessonTile(number: 1, title: "Introduction", time: "2 Hours", progress: 1.0, isCompleted: true),
                    SizedBox(height: 10.h),
                    _lessonTile(number: 2, title: "Importance", time: "2 Hours", progress: 0.25, isCompleted: false),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 18.sp),
          SizedBox(width: 50.w),

          Text(text, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.sp)),
        ],
      ),
    );
  }

  Widget _lessonTile({required int number, required String title, required String time, required double progress, required bool isCompleted}) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 1)],
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.blue.withOpacity(0.1), shape: BoxShape.circle),
            child: Text(number.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 3.h),
                Text(time, style: TextStyle(fontSize: 13.sp, color: Colors.black54)),
              ],
            ),
          ),
          Icon(Icons.play_circle_fill, size: 32.sp, color: Colors.blue),
          SizedBox(width: 10.w),
          isCompleted
              ? Icon(Icons.check_circle, color: Colors.blue, size: 24.sp)
              : SizedBox(
            width: 50.w,
            height: 6.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey.shade300,
                  color: Colors.blue,
                ),
                Text("${(progress * 100).round()}%", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/


import 'package:courses_app/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(                          // ← Stack use karo overlap ke liye
        children: [
          // ========= TOP HERO IMAGE =========
          SizedBox(
            height: double.infinity.h,                    // thoda zyada height for better overlap
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/images2.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.85),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                // Back button
                Positioned(
                  top: 50.h,
                  left: 20.w,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.black.withOpacity(0.4),
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 24.sp),
                    ),
                  ),
                ),
                // Info chips
                Positioned(
                  bottom: 30.h,
                  left: 30.w,
                  right: 30.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _infoChip(Icons.access_time, "32 Hours"),
                      _infoChip(Icons.play_lesson, "12 Lessons"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ========= WHITE OVERLAPPING CARD (Yeh image ke upar aayega) =========
          Positioned(
            top: 300.h,                       // ← Yeh overlap control karta hai
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(24.w, 32.h, 24.w, 40.h), // top padding se content safe rahega
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title + Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Systems Design",
                          style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$30",
                          style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "System Design is the process of designing the architecture, components, and interfaces for a system so that it meets the end-user requirements. This specially designed System Design tutorial will help you to learn and master System Design concepts in the most efficient way from basics to advanced level.",
                      style: TextStyle(fontSize: 15.sp, height: 1.6, color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 30.h),

                    Center(
                      child: Text(
                        "Lessons",
                        style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 16.h),

                    // Lessons
                    _lessonTile(number: 1, title: "Introduction", time: "2 Hours", progress: 1.0, isCompleted: true),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 2, title: "Importance", time: "2 Hours", progress: 0.25, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 3, title: "Scalability Basics", time: "4 Hours", progress: 0.0, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 4, title: "Load Balancing", time: "5 Hours", progress: 0.0, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 5, title: "Caching Strategies", time: "6 Hours", progress: 0.0, isCompleted: false),

                    SizedBox(height: 50.h), // extra space bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Info Chip (same better look)
  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.28),
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.white.withOpacity(0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 19.sp),
          SizedBox(width: 8.w),
          Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14.sp)),
        ],
      ),
    );
  }

  // Lesson Tile (same as before, thoda polished)
  Widget _lessonTile({
    required int number,
    required String title,
    required String time,
    required double progress,
    required bool isCompleted,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.r,
            backgroundColor: Colors.blue.shade100,
            child: Text(number.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: Colors.blue.shade700)),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 4.h),
                Text(time, style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade600)),
              ],
            ),
          ),
          Icon(Icons.play_circle_fill, size: 38.sp, color: Colors.blue),
          SizedBox(width: 12.w),
          isCompleted
              ? Icon(Icons.check_circle, color: Colors.green, size: 30.sp)
              : SizedBox(
            width: 64.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(
                  value: progress,
                  minHeight: 7.h,
                  backgroundColor: Colors.grey.shade300,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                Text("${(progress * 100).round()}%", style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold, color: Colors.black87)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*


import 'package:courses_app/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(                                      // ← Stack zaroori hai overlap ke liye
        children: [

          // ========= HERO IMAGE (fixed height) =========
          SizedBox(
            height: 440.h,                              // jitna overlap chahiye utna adjust kar sakte ho
            width: 440.w,

            child: Stack(
              children: [
                Image.asset(
                  "assets/images/images2.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.85),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                // Back button
                Positioned(
                  top: 50.h,
                  left: 20.w,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.black45,
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 24.sp),
                    ),
                  ),
                ),
                // Info chips
                Positioned(
                  bottom: 30.h,
                  left: 30.w,
                  right: 30.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _infoChip(Icons.access_time_filled, "32 Hours"),
                      SizedBox(width: 20.w),
                      _infoChip(Icons.play_lesson, "12 Lessons"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ========= WHITE OVERLAPPING CARD – Pura baaki screen cover karega =========
          Positioned(
            top: 280.h,                     // ← Yeh overlap control karta hai (280-300 ke beech best lagta hai)
            left: 0,
            right: 0,
            bottom: 0,                      // ← Yeh important! Bottom 0 hone se pura neeche tak fill ho jayega
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(24.w, 34.h, 24.w, 40.h), // top padding se content image ke andar na jaye
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title + Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Systems Design", style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold)),
                        Text("\$30", style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.green)),
                      ],
                    ),
                    SizedBox(height: 14.h),

                    // Description
                    Text(
                      "System Design is the process of designing the architecture, components, and interfaces for a system so that it meets the end-user requirements. This specially designed System Design tutorial will help you to learn and master System Design concepts in the most efficient way from basics to advanced level.",
                      style: TextStyle(fontSize: 15.5.sp, height: 1.6, color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 30.h),

                    Text("Lessons", style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16.h),

                    // Lessons (jitne marzi daal do)
                    _lessonTile(number: 1, title: "Introduction", time: "2 Hours", progress: 1.0, isCompleted: true),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 2, title: "Importance", time: "2 Hours", progress: 0.25, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 3, title: "Scalability Basics", time: "4 Hours", progress: 0.0, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 4, title: "Load Balancing", time: "5 Hours", progress: 0.0, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 5, title: "Database Sharding", time: "6 Hours", progress: 0.0, isCompleted: false),
                    SizedBox(height: 14.h),
                    _lessonTile(number: 6, title: "Microservices", time: "7 Hours", progress: 0.0, isCompleted: false),

                    SizedBox(height: 100.h), // bottom safe area ke liye
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Baaki widgets same – thodi polishing ki hai
  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 20.sp),
          SizedBox(width: 8.w),
          Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15.sp)),
        ],
      ),
    );
  }

  Widget _lessonTile({
    required int number,
    required String title,
    required String time,
    required double progress,
    required bool isCompleted,
  }) {
    return Container(
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 22.r, backgroundColor: Colors.blue.shade100,
            child: Text(number.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp, color: Colors.blue.shade700)),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 4.h),
                Text(time, style: TextStyle(fontSize: 13.5.sp, color: Colors.grey.shade600)),
              ],
            ),
          ),
          Icon(Icons.play_circle_fill, size: 40.sp, color: Colors.blue),
          SizedBox(width: 14.w),
          isCompleted
              ? Icon(Icons.check_circle, color: Colors.green, size: 32.sp)
              : SizedBox(
            width: 70.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                LinearProgressIndicator(value: progress, minHeight: 8.h, backgroundColor: Colors.grey.shade300, color: Colors.blue, borderRadius: BorderRadius.circular(4.r)),
                Text("${(progress * 100).round()}%", style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
