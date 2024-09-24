import 'package:dio/dio.dart';
import 'package:pawa_pet_adoption/core/errors/exceptions.dart';
import 'package:pawa_pet_adoption/data/models/pet_detail_model.dart';
import 'package:pawa_pet_adoption/data/models/pet_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<PetModel>> getHome();

  Future<List<PetModel>> getFavorites();

  Future<PetDetailModel> getDetail(String id);
}

class HomeRemoteDataSourceImplementation implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImplementation({required this.dio});

  @override
  Future<List<PetModel>> getHome() async {
    final response =
        await dio.get("https://65f970a6df15145246119ffc.mockapi.io/pets");
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data.map((e) => PetModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PetModel>> getFavorites() async {
    final response =
        await dio.get("https://65f970a6df15145246119ffc.mockapi.io/pets");
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data.map((e) => PetModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<PetDetailModel> getDetail(String id) async {
    final response = await dio
        .get("https://65f970a6df15145246119ffc.mockapi.io/petDetail/$id");
    if (response.statusCode == 200) {
      var data = response.data;
      return PetDetailModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }
}
