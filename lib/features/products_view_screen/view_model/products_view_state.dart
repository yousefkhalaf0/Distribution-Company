part of 'products_view_cubit.dart';

@immutable
sealed class ProductsViewState {}

final class ProductsViewInitial extends ProductsViewState {}

final class ChangeProductsViewStyleState extends ProductsViewState {}

final class ProductsViewDropdownChangedState extends ProductsViewState {
  final String dropdownValue;

  ProductsViewDropdownChangedState(this.dropdownValue);
}
