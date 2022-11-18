part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();
}

class AllCategoriesEvent extends CategoriesEvent {
  const AllCategoriesEvent();

  @override
  List<Object?> get props => [];
}

class CategoryRecipesEvent extends CategoriesEvent {
  final String categoryName;

  const CategoryRecipesEvent({required this.categoryName});

  @override
  List<Object?> get props => [categoryName];
}