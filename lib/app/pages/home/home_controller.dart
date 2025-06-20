import 'package:bloc/bloc.dart';
import 'package:melina/app/pages/home/home_state.dart';
import 'package:melina/app/repositories/home/home_repository.dart';

class HomeController extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository) : super(HomeState.initial());
}
