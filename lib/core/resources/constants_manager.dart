import '../../data/data_models/category_data_model.dart';
import 'assets_manager.dart';

class ConstantsManager {
  static const List<CategoryDataModel> categories = [
    CategoryDataModel(svgIconPath: AssetsManager.compass, name: 'All', id: '0'),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Sport',
        id: '1',
        imagePath: CategoriesAssets.sport),
    CategoryDataModel(
        svgIconPath: AssetsManager.birthday,
        name: 'Birthday',
        id: '2',
        imagePath: CategoriesAssets.birthday),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'BookClub',
        id: '3',
        imagePath: CategoriesAssets.bookClub),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Eating',
        id: '4',
        imagePath: CategoriesAssets.eating),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Exhibition',
        id: '5',
        imagePath: CategoriesAssets.exhibition),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Gaming',
        id: '6',
        imagePath: CategoriesAssets.gaming),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Holiday',
        id: '7',
        imagePath: CategoriesAssets.holiday),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'Meeting',
        id: '8',
        imagePath: CategoriesAssets.meeting),
    CategoryDataModel(
        svgIconPath: AssetsManager.sport,
        name: 'WorkShop',
        id: '8',
        imagePath: CategoriesAssets.workshop),
  ];
}
