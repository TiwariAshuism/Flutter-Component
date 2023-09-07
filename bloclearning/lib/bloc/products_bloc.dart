import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:blocklearning/repo/productsrepo.dart';
import 'package:equatable/equatable.dart';
import '../models/products_models.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsLoadedEvent, ProductsState> {
  final ProductRepo productRepo;

  ProductsBloc(this.productRepo) : super(ProductLoadingState()) {
    on<ProductsLoadedEvent>((event, emit) async {
      try {
        emit(ProductLoadingState());
        var response = await productRepo.getProduct();
        emit(ProductLoadedState(response));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
