
import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/authentications/screens/info_widget/info_widget.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final PageController _pageController = PageController(); // PageView nazorati
  int _currentIndex = 0; // Hozirgi sahifa indeksi

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/images/explore.png",
      "title": "Explore The Beautiful World!",
      "description": "Discover amazing places around the world.",
    },
    {
      "image": "assets/images/find_tickets.png",
      "title": "Find Your Perfect Tickets To Fly",
      "description": "Choose your destination and book your tickets easily.",
    },
    {
      "image": "assets/images/book_appointment.png",
      "title": "Book Appointment in Easiest Way!",
      "description": "Plan your trips with just a few taps.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView uchun asosiy sahifalar
          PageView.builder(
            controller: _pageController,
            itemCount: _onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                image: _onboardingData[index]['image']!,
                title: _onboardingData[index]['title']!,
                description: _onboardingData[index]['description']!,
              );
            },
          ),

          // Pastki navigatsiya
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Skip tugmasi oxirgi sahifaga o'tadi
                    _pageController.jumpToPage(_onboardingData.length - 1);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Row(
                  children: List.generate(
                    _onboardingData.length,
                        (index) => buildDot(index, context),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_currentIndex == _onboardingData.length - 1) {
                      Navigator.pushNamed(
                        context,
                        RouteNames.signIn
                      );
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _currentIndex == _onboardingData.length - 1 ? "Get Started" : "Next",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Sahifa indikatorlari
  Widget buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentIndex == index ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
