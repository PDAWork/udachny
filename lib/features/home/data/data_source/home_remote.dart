import 'package:dfa_media/features/home/data/model/banner_model.dart';
import 'package:dfa_media/features/home/data/model/product_model.dart';
import 'package:dfa_media/features/home/data/model/story_model.dart';

abstract interface class HomeRemote {
  Future<List<BannerModel>> getBanner();
  Future<List<ProductModel>> getProduct();
  Future<List<StoryModel>> getStory();
}
