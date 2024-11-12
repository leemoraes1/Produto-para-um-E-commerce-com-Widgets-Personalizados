import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productDescription;
  final double productPrice;

  ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.black, //local da imagem
              child: Center(child: Text('Imagem do Produto', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10),
            Text(productName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(productDescription, style: TextStyle(fontSize: 14, color: Colors.grey)),
            SizedBox(height: 10),
            Text('\$${productPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
