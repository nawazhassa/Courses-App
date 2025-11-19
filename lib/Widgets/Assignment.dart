/*


class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedOption = 1; // 1 is selected by default (second option)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F1E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F1E8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
          onPressed: () {},
        ),
        title: const Text(
          'Assignment Quiz',
          style: TextStyle(
            color: Color(0xFF1E293B),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Course Card
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=100&h=100&fit=crop',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Systems Design',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Question Progress
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Question',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '4 / 16',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1E293B),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFF10B981)),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 16,
                                color: Color(0xFF10B981),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '00:45',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF10B981),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Progress Bar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 4 / 16,
                        backgroundColor: const Color(0xFFE2E8F0),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xFF3B82F6),
                        ),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Question Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo incididunt ut labore et dolore magna aliqua?',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Options
                    _buildOption(0, 'Lorem ipsum dolor sit amet'),
                    const SizedBox(height: 12),
                    _buildOption(1, 'Lorem ipsum dolor sit amet'),
                    const SizedBox(height: 12),
                    _buildOption(2, 'Lorem ipsum dolor sit amet'),
                    const SizedBox(height: 12),
                    _buildOption(3, 'Lorem ipsum dolor sit amet'),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),

          // Continue Button
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F1E8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B82F6),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(int index, String text) {
    final bool isSelected = selectedOption == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3B82F6) : const Color(0xFFEFF6FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.white : const Color(0xFFCBD5E1),
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3B82F6),
                  ),
                ),
              )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.white : const Color(0xFF475569),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
/*
  import 'package:courses_app/imports.dart';
  import 'package:flutter/material.dart';
  import '../constants/colors.dart';

  class AssignmnetScreen extends StatelessWidget {
    const AssignmnetScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        extendBodyBehindAppBar: true, // 👈 AppBar ko gradient ke upar le jata hai
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // 👈 transparent AppBar
          elevation: 0,
          leading: IconButton(
            icon: CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.white.withOpacity(0.8),
              child: Icon(Icons.arrow_back, color: Colors.black, size: 24.sp),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: const Text(
            "Assignment Quiz",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(gradient: primaryGradient),

          child: SafeArea(
            child: Column(
              children: [

                // SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: scaffoldBg,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25), // ✅ Correct
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65.w,
                          height: 65.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            image: DecorationImage(
                              image: AssetImage('assets/images/images2.jpg'),
                              // ✅ use constructor variable
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Text('System Design',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),




                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: scaffoldBg
                          ),
                        )







                      ],
                    ),
                  ),
                ),















              ],
            ),
          ),
        ),
      );
    }
  }*/






import 'package:courses_app/imports.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AssignmnetScreen extends StatefulWidget {
   AssignmnetScreen({super.key});

  State<AssignmnetScreen> createState() => _AssignmnetScreen();


}

class _AssignmnetScreen extends State<AssignmnetScreen> {

  int selectedOption = 1; // 1 is selected by default (second option)

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
            radius: 30.r,
            backgroundColor: Colors.white.withOpacity(0.8),
            child: Icon(Icons.arrow_back, color: Colors.black, size: 24.sp),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Assignment Quiz",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: primaryGradient),
        child: SafeArea(
          child: Column(
            children: [
              // ========== Top Course Card ==========
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  height: 80,
                  decoration: BoxDecoration(
                    color: scaffoldBg,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 65.w,
                        height: 65.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/images2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      const Text(
                        'System Design',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ========== Yeh wala poori baqi height le lega ==========
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: scaffoldBg, // ya jo background chahiye
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Question',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '4 / 16',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1E293B),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: const Color(0xFF10B981)),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 16,
                                    color: Color(0xFF10B981),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '00:45',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF10B981),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // Progress Bar
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: 4 / 16,
                            backgroundColor: const Color(0xFFE2E8F0),
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFF3B82F6),
                            ),
                            minHeight: 6,
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Question Card
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo incididunt ut labore et dolore magna aliqua?',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF1E293B),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Options
                        _buildOption(0, 'Lorem ipsum dolor sit amet'),
                        const SizedBox(height: 12),
                        _buildOption(1, 'Lorem ipsum dolor sit amet'),
                        const SizedBox(height: 12),
                        _buildOption(2, 'Lorem ipsum dolor sit amet'),
                        const SizedBox(height: 12),
                        _buildOption(3, 'Lorem ipsum dolor sit amet'),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildOption(int index, String text) {
    final bool isSelected = selectedOption == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3B82F6) : const Color(0xFFEFF6FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.white : const Color(0xFFCBD5E1),
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3B82F6),
                  ),
                ),
              )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.white : const Color(0xFF475569),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}