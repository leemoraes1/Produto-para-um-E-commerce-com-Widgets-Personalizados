import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  final double rating;

  ProductRating({required this.rating});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars >= 0.5;

    return Row(//estrelas
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, color: Colors.yellow);
        } else if (index == fullStars && hasHalfStar) {
          return Icon(Icons.star_half, color: Colors.yellow);
        } else {
          return Icon(Icons.star_border, color: Colors.yellow);
        }
      }),
    );
  }
}
