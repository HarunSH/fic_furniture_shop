import 'package:fic_furniture_shop/detail_page.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey[700],
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: 'Keranjang'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
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
          const SizedBox(height: 10),
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
            color: Colors.grey[300],
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
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(product: product);
            }));
          },
          child: Container(
            height: 240,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(height: 12),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.asset(
                        product.image,
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      product.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Text(
                            '\$${product.price}',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 18),
                          ),
                          const Spacer(),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(product.rate.toString(),
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 14))
                        ],
                      )),
                ]),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
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
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ],
    ),
  );
}
