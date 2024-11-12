import 'package:flutter/material.dart';
import 'components/custom_button.dart';
import 'components/product_card.dart';
import 'components/product_rating.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Product Page',//titulo da aba
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lee Moraes Store'),
        backgroundColor: Color.fromRGBO(233, 30, 148, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(
              imageUrl: '', // caixa preta de ex
              productName: 'Carregador',
              productDescription: 'Possui adaptador!.',
              productPrice: 30.00,
            ),
            SizedBox(height: 20),
            ProductRating(rating: 4.5),
            SizedBox(height: 20),
            CustomButton(
              buttonText: 'Comprar Agora',
              onPressed: () {
                // Ação de compra
                print('Produto comprado!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
