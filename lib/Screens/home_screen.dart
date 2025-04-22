import 'package:flutter/material.dart';
import 'package:lafyuu/category_list.dart';
import 'package:lafyuu/headings.dart';
import 'package:lafyuu/items_list.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        scrolledUnderElevation: 10,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        title: const Text(
          '',
          style: TextStyle(
            fontFamily: '',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              size: 35,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 50,
            margin: const EdgeInsets.all(12),
            child: GestureDetector(
              onLongPress: () {
                //FlutterClipboard.controlV();
              },
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search or ask for anything",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner Image
            Container(
              height: 270, // Fixed height for the banner
              margin: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "images/Offer_Banner.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Category Section
            const Headings(left: "Category", right: "More Category"),

            SizedBox(
              height: 150, // Fixed height for the category list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return categories[index];
                },
              ),
            ),

            const SizedBox(height: 10),

            // Items Section
            const Headings(left: 'Flash Sales', right: 'See More'),

            SizedBox(
              height: 230, // Fixed height for the items list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return items[index];
                },
              ),
            ),

            const SizedBox(height: 10),

            // Additional Section
            const Headings(left: "Mega Sales", right: "See More"),

            SizedBox(
              height: 230, // Fixed height for the items list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return items[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
