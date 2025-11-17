import '../imports.dart';
import '../constants/colors.dart';


class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String progress;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 80.h,
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
          // Image
          Container(
            width: 65.w,
            height: 65.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                image: AssetImage(imagePath), // ✅ use constructor variable
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
                  title, // ✅ use constructor variable
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
                      subtitle, // ✅ use constructor variable
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: primaryDark,
                      ),
                    ),
                    Text(
                      progress, // ✅ use constructor variable
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
