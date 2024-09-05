import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(id: '1', title: 'shorts', price: 23, image: 'assets/products/shorts.png'),
  Product(id: '2', title: 'backpack', price: 44, image: 'assets/products/backpack.png'),
  Product(id: '3', title: 'drum', price: 345, image: 'assets/products/drum.png'),
  Product(id: '4', title: 'guitar', price: 234, image: 'assets/products/guitar.png'),
  Product(id: '5', title: 'jeans', price: 76, image: 'assets/products/jeans.png'),
  Product(id: '6', title: 'karati', price: 37, image: 'assets/products/karati.png'),
  Product(id: '7', title: 'skates', price: 34, image: 'assets/products/skates.png'),
  Product(id: '8', title: 'suitcase', price: 22, image: 'assets/products/suitcase.png'),
];

@riverpod
List<Product> products(ref){
  return allProducts ;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price<50).toList();
}