import 'package:fic_furniture_shop/model/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(height: 16),
          header(),
          const SizedBox(height: 30),
          title(),
          const SizedBox(height: 30),
          categories(),
          const SizedBox(height: 20),
          recommended(),
          const SizedBox(height: 20),
          gridView(),
        ],
      ),
    );
  }

//this is header
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

//this is title
  Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover the most',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            'modern furniture',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }

//this is category
  Widget categories() {
    List list = [
      'ALL',
      'Living Room',
      'Bedroom',
      'Dining Room',
      'Kitchen Set',
    ];
    return Container(
      height: 20,
      color: Colors.white,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              index == 0 ? 16 : 16,
              0,
              index == list.length - 1 ? 8 : 8,
              0,
            ),
            child: Text(
              list[index],
            ),
          );
        },
      ),
    );
  }

  Widget gridView() {
    return GridView.builder(
      itemCount: dummyProduct.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          mainAxisExtent: 240),
      itemBuilder: (context, index) {
        Product product = dummyProduct[index];
        return Container(
          height: 240,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.asset(
                  product.image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}

// recommended
Widget recommended() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended Furnitures',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    ),
  );
}
