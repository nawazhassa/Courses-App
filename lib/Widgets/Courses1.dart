import '../imports.dart';
import '../constants/colors.dart';




class Courses1Card extends StatelessWidget {
  final String imagePath;
  final String title;
  final String lessons;
  final String price;
  final double progress; // value between 0.0 - 1.0
  final String progressText; // e.g. '20%'

  const Courses1Card({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.lessons,
    required this.price,
    required this.progress,
    required this.progressText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.all(10.w),
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(width: 1.w, color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 180.h,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 10.h),

         Container(
           width: double.infinity,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             // mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('$title',
                 style: TextStyle(
                   fontSize: 12.sp,
                   color: primary,
                   fontWeight: FontWeight.bold,
                 ),
               ),
                SizedBox(height: 8.h),
                Text('$lessons',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
               SizedBox(height: 8.h),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('$lessons',style: TextStyle(
                     fontSize: 12.sp,
                     color: primary,
                     fontWeight: FontWeight.bold,
                   ),),
                   Text('$progressText',style: TextStyle(color: green,fontWeight: FontWeight.bold),)





                 ],
               )


             ],
           ),
         )

         /* Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              children: [
                SizedBox(
                  width: 40.w,
                  child: Text(
                    progressText,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: primary,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey.shade200,
                      color: primary,
                      minHeight: 8.h,
                    ),
                  ),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}