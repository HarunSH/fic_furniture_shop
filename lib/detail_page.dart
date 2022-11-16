import 'package:fic_furniture_shop/model/product.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 40),
          header(),
          const SizedBox(height: 40),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Container(),
                Image.asset(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Spacer(),
          Text(
            'Detail',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Material(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.favorite_border_sharp,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
