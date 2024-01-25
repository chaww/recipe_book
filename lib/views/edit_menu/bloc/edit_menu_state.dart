part of 'edit_menu_bloc.dart';

enum EditMenuStatus { initial, loading, success, failure }

class EditMenuState extends Equatable {
  const EditMenuState({
    this.status = EditMenuStatus.initial,
    this.categoryList = const ['ไม่ระบุ', 'ชา', 'กาแฟ'],
    this.imagePath = '',
    this.name = '',
    // this.nameValidate = false,
    this.category = '',
    this.recipeHot = const [],
    this.recipeIce = const [],
    this.recipeFrappe = const [],
  });

  final EditMenuStatus status;
  final List<String> categoryList;

  final String imagePath;
  final String name;
  // final bool nameValidate;
  final String category;
  final List<Recipe> recipeHot;
  final List<Recipe> recipeIce;
  final List<Recipe> recipeFrappe;

  EditMenuState copyWith({
    EditMenuStatus Function()? status,
    List<String> Function()? categoryList,
    String Function()? imagePath,
    String Function()? name,
    // bool Function()? nameValidate,
    String Function()? category,
    List<Recipe> Function()? recipeHot,
    List<Recipe> Function()? recipeIce,
    List<Recipe> Function()? recipeFrappe,
  }) {
    return EditMenuState(
      status: status != null ? status() : this.status,
      categoryList: categoryList != null ? categoryList() : this.categoryList,
      imagePath: imagePath != null ? imagePath() : this.imagePath,
      name: name != null ? name() : this.name,
      // nameValidate: nameValidate != null ? nameValidate() : this.nameValidate,
      category: category != null ? category() : this.category,
      recipeHot: recipeHot != null ? recipeHot() : this.recipeHot,
      recipeIce: recipeIce != null ? recipeIce() : this.recipeIce,
      recipeFrappe: recipeFrappe != null ? recipeFrappe() : this.recipeFrappe,
    );
  }

  @override
  List<Object> get props => [
        status,
        categoryList,
        imagePath,
        name,
        // nameValidate,
        category,
        recipeHot,
        recipeIce,
        recipeFrappe,
      ];
}
