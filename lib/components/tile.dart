import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final MaterialColor color;
  final VoidCallback? onPressed;
  const GroceryItem({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color:color[100]),
        child: Column(
          children: [
            Image.asset(imagePath, height: 64,),
            Text(name),

            MaterialButton(
              onPressed: onPressed,
              color:color,
              child: Text(
                '\$$price',
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold
                ), 
              ),
            )
          ],
        )
      ),
    );
  }
}