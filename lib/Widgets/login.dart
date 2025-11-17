/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // white icons
      ),
    );


    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.w, vertical: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFF4C2), // Slightly darker top peach
              Colors.white,
              // Color(0xFFFFFFFF), // Light bottom shade
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10.h),

                // Courses title
                const Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1847BC),
                  ),
                ),

                const SizedBox(height: 50.h),





                // Welcome text
                const Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 16.sp, color: Color(0xff1847BC)),
                ),
                const SizedBox(height: 4.h),

                const Text(
                  "Login to Continue",
                  style: TextStyle(
                    fontSize: 30.sp
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00264D),
                  ),
                ),

                const SizedBox(height: 20.h),

                // Email TextField
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(color: Colors.grey, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        */
/*blurRadius: 10,
                        offset: Offset(0, 4),*/ /*

                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Email label
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                            fontSize: 10.sp,
                            // fontWeight: FontWeight.w100,
                            color: Color(0xff1847BC),
                          ),
                        ),
                      ),

                      // const SizedBox(height: 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontSize: 13.sp),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15.w,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10.h),

                      // Password label
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Color(0xff1847BC),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      // const SizedBox(height: 2),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 13.sp),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15.w,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.h),

                      // Remember me + Forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.check_box_sharp,
                                size: 22,
                                color: Color(0xff1847BC),
                              ),
                              const SizedBox(width: 8.w),
                              const Text(
                                "Remember me",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25.h),

                // Login button
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1847BC),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25.h),



                // Or Login With
                const Text(
                  "Or login With",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                ),

                const SizedBox(height: 5.h),

                // Google + Apple buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                   */
/* SvgPicture.asset(
                      'assets/images/icons8-google.svg',
                      width: 40, // Optional: Set the width
                      height: 40, // Optional: Set the height
                      // colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn), // Optional: Apply a color filter
                      semanticsLabel: 'Google Icon', // Optional: For accessibility
                    ),*/ /*



                    // _socialButton(FontAwesomeIcons.google, Colors.red),


                    _socialSvgButton('assets/images/icons8-google.svg'),
                    const SizedBox(width: 20.w),

                      _socialSvgButton('assets/images/icons8-apple-logo.svg'),



                   */
/* SvgPicture.asset(
                      'assets/images/icons8-google.svg',
                      width: 50, // Optional: Set the width
                      height: 50, // Optional: Set the height
                      // colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn), // Optional: Apply a color filter
                      semanticsLabel: 'Google Icon', // Optional: For accessibility
                    ),*/ /*


                    // _socialButton(FontAwesomeIcons.apple, Colors.black)

                  ],
                ),
                const SizedBox(height: 25.h),

                // Signup text
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 5.h),

                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),

                const SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Social circle buttons
  */
/*Widget _socialButton(IconData iconData, Color color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: color,
          size: 28,
        ),
      ),
    );
  }*/ /*





  Widget _socialSvgButton(String assetPath) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          assetPath,
          height: 26,
          width: 26,
        ),
      ),
    );
  }




}
*/

import '../constants/colors.dart';
import 'package:courses_app/imports.dart';
import 'package:courses_app/widget_imports.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: primaryGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),

                // Courses title
                Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: primary
                  ),
                ),

                SizedBox(height: 70.h),

                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 18.sp, color: primary),
                ),

                SizedBox(height: 4.h),

                Text(
                  "Login to Continue",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: primaryDark
                  ),
                ),

                SizedBox(height: 20.h),

                // Email + Password Box
                Container(
                  padding: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                    color: Color(0xFFfff7ed),
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(color: Colors.grey, width: 0.5.w),
                    boxShadow: [BoxShadow(color: Colors.black12)],
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: primary,
                          ),
                        ),
                      ),

                      SizedBox(height: 5.h),

                      /*         TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontSize: 13.sp),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: Colors.red,width: 0.1.w),
                          ),
                        ),
                      ),
            */
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 15.h,
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 0.7.w,
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade600,
                              width: 1.w,
                            ),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.w,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 25.h),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      SizedBox(height: 5.h),

                      /*TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 13.sp),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),*/
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 13.sp),
                          filled: true,
                          fillColor: const Color(0xFFF7F8FC),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 15.h,
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 0.7.w,
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade600,
                              width: 1.w,
                            ),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.w,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_box_sharp,
                                size: 22.sp,
                                color: primary,
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                "Remember me",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ],
                          ),
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25.h),

                Container(
                  width: double.infinity,
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 60.h),

                Text(
                  "Or login With",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                ),

                SizedBox(height: 12.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialSvgButton('assets/images/icons8-google.svg'),
                    SizedBox(width: 20.w),
                    _socialSvgButton('assets/images/icons8-apple-logo.svg'),
                  ],
                ),

                SizedBox(height: 25.h),

                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black54, fontSize: 14.sp),
                ),
                SizedBox(height: 5.h),

                /*  Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),*/
                Container(
                  width: double.infinity,
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFfff7ed),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: primary,

                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialSvgButton(String assetPath) {
    return Container(
      height: 50.h,
      width: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        /*boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],*/
      ),
      child: Center(
        child: SvgPicture.asset(assetPath, height: 26.h, width: 26.h),
      ),
    );
  }
}
