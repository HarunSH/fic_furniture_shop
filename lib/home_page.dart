import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 16),
          header(),
          const SizedBox(height: 30),
          title(),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Material(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.menu, color: Colors.black),
              ),
            ),
          ),
          Spacer(),
          Text(
            'HOME',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          const Icon(Icons.search),
        ],
      ),
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover The Most',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Text(
            'Modern Furniture',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ],
      ),
    );
  }
}

Widget header() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        Material(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ),
        ),
        Spacer(),
        Text(
          'HOME',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        const Icon(Icons.search),
      ],
    ),
  );
}
