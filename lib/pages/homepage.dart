import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/components/tile.dart';
import 'package:grocery/models/cart_provider.dart';
import 'package:grocery/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartPage()),
        ),
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const Text("Good Morning,"),
            ),

            const SizedBox(height: 4),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Let's order fresh items for you!",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(32, 24, 32, 24),
              child: Divider(color: Colors.black),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Fresh Items", style: TextStyle(fontSize: 16)),
            ),

            Expanded(
              child: Consumer<CartProvider>(
                builder: (context, cart, child) {
                  return GridView.builder(
                    itemCount: cart.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.16,
                        ),
                    itemBuilder: ((context, index) {
                      final item = cart.shopItems[index];

                      return GroceryItem(
                        name: item[0],
                        price: item[1],
                        imagePath: item[2],
                        color: item[3],
                        onPressed: () {
                          context.read<CartProvider>().addItemToCart(index);
                        },
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
