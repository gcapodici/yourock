import 'package:flutter/material.dart';

import '../../Model/Product.dart';
import '../../Values/ResponsiveApp.dart';

class ProductContainer extends StatelessWidget {
  Product product;
  var onPress;

  ProductContainer(this.product, {super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    ResponsiveApp responsiveApp = ResponsiveApp(context);
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        height: responsiveApp.productContainerWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.title.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
            Text(product.price, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
