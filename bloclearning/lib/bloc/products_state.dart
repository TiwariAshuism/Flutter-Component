part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductLoadingState extends ProductsState {}

class ProductLoadedState extends ProductsState {
  final List<Products> products;

  const ProductLoadedState(this.products);
  @override
  List<Object> get props => [products];
}

class ProductErrorState extends ProductsState {
  final String errorMessage;

  const ProductErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
