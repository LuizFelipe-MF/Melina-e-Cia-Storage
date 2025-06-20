import 'package:melina/app/core/rest_client/custom_dio.dart';
import 'package:melina/app/repositories/home/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final CustomDio dio;
  HomeRepositoryImpl({
    required this.dio,
  });
}
