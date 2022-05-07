import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro/data/models/category/FeaturedListRespnse.dart' as t;
import 'package:macbro/data/models/new/new_response.dart';

import '../../../base/base_controller.dart';
import '../../../core/constants/constants.dart';
import '../../../data/models/banners/banners_response.dart';
import '../../../data/models/category/category_response.dart';
import '../../../data/repository/home/home_repository.dart';
import '../../../ui/main/home/widgets/new.dart';

class HomeController extends BaseController
    with GetSingleTickerProviderStateMixin {
  final HomeRepository? repository;

  HomeController({
    required this.repository,
  }) : assert(repository != null);

  List<Banners> _banners = [];
  List<Categories> _categories = [];
  List<t.Products> _new_products = [];
  int _index = 0;
  final scrollController = ScrollController();

   RxInt current = 0.obs;

  void setCounter(int index)  {current.value = index;
  update();
  
  }

  RxInt get counter => current;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getBanners();
    getNewProducts();
    getCategories();
    super.onReady();
  }

  void setIndex(int i) {
    _index = i;
    update();
  }

  Future<void> getBanners() async {
    setLoading(true);
    final result = await repository?.getBanners();
    if (result is BannersResponse) {
      _banners = result.banners ?? [];
      update();
    } else {
      Get.snackbar('error'.tr, result.toString());
    }
  }

  Future<void> getCategories() async {
    setLoading(true);
    final result = await repository?.getCategories();
    if (result is CategoryResponse) {
      _categories = result.categories ?? [];
      update();
    } else {
      Get.snackbar('error'.tr, result.toString());
    }
  }

  Future<void> getNewProducts() async {
    setLoading(true);
    final result = await repository?.getNewProducts();
    if (result is t.FeaturedListRespnse) {
      _new_products = result.featuredList?.products ?? [];
      update();
    } else {
      Get.snackbar('error'.tr, result.toString());
    }
  }

  List<Banners> get banners => _banners;

  List<Categories> get categories => _categories;

  List<t.Products> get news => _new_products;

  int get index => _index;
}
