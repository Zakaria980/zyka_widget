  import 'package:flutter/material.dart';
  import 'dart:async';

  void main() {
  runApp(const FoodRecipeApp());
  }

  class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeScreen(),
      );
  }
  }

  class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
  }

  class _RecipeScreenState extends State<RecipeScreen> {
  final PageController _pageController = PageController();
  final List<String> imagePaths = [
      'assets/assets3/image (1).png',
      'assets/assets3/image (4).png',
      'assets/assets3/image (5).png',
  ];
  Timer? _timer;

  @override
  void initState() {
      super.initState();
      autoSlide();
  }

  void autoSlide() {
      int nextPage = 0;
      _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
          if (nextPage == imagePaths.length) {
          nextPage = 0;
          }
          _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          );
          nextPage++;
      }
      });
  }

  @override
  void dispose() {
      _timer?.cancel();
      _pageController.dispose();
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
          title: const Text('Food Recipes'),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
          ),
          actions: [
          IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
          ),
          ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      ),
                  );
                  },
              ),
              ),
              const SizedBox(height: 16),
              const Text(
              'Savor the Aromas: Exquisite Exotic Spice Infusion Rice Bowl',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 8),
              const Text(
              'By Anindya Rahma',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
              ),
              ),
              const SizedBox(height: 12),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                  InfoChip(icon: Icons.access_time, text: '15 Mins'),
                  InfoChip(icon: Icons.list, text: '22 Ingredients'),
                  InfoChip(icon: Icons.restaurant, text: '3 Servings'),
              ],
              ),
              const SizedBox(height: 16),
              const Text(
              'This dish features fragrant jasmine rice meticulously infused with a blend of rare and aromatic spices, This dish features fragrant jasmine rice meticulousty',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Spacer(),
              ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  ),
              ),
              child: const Text(
                  'Start Cooking',
                  style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              ),
          ],
          ),
      ),
      );
  }
  }

  class InfoChip extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoChip({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
      return Row(
      children: [
          Icon(icon, size: 20, color: Colors.black54),
          const SizedBox(width: 4),
          Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
      ],
      );
  }
  }
