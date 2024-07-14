import 'package:bloc/bloc.dart';
import 'package:dfa_media/features/home/domain/entity/product_entity.dart';
import 'package:dfa_media/features/home/domain/use_case/get_product.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({
    required GetProduct getProduct,
  })  : _getProduct = getProduct,
        super(ProductInitial());

  final GetProduct _getProduct;

  void init() async {
    emit(ProductLoading());

    final result = await _getProduct.call();

    result.fold(
      (failure) => emit(ProductError(message: 'Ошибка')),
      (data) => emit(ProductSuccess(product: data)),
    );
  }
}
