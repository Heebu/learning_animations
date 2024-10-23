import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isIcon = false;

  onTappedButton(){
    setState(() {
      isIcon = !isIcon;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap:
            onTappedButton,
          child: AnimatedContainer(
            duration: Duration(seconds: 4),
            height: 60.0,
            width: isIcon? 100: 150,
            decoration: BoxDecoration(
              color: isIcon? Colors.blue: Colors.green,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: isIcon == true?  Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ): Text('Hello World'),
            ),
          ),
        ),
      ),
    );
  }
}


