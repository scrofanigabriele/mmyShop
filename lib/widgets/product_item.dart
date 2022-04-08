import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
import '../providers/product.dart';


class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments: product.id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: Image.network(product.imageUrl),
          footer: GridTileBar(
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: product.isFavorite ?  Icon(Icons.favorite) : Icon(Icons.favorite_border),
              color: Theme.of(context).accentColor,
              onPressed: () {
                product.toggleFavouriteStatus();
              },
            ),
            trailing: IconButton(
              icon: Icon(Icons.shop),
                color: Theme.of(context).accentColor,
                onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
