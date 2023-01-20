import 'package:bloc/bloc.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({
    required this.homeRepository,
  }) : super(HomeInitial()) {
    on<HomeFetch>(_onHomeFetch);
  }

  Future<void> _onHomeFetch(HomeFetch event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    var homeData = await homeRepository.fetchHeroData();
    emit(HomeSuccess(homeHero: homeData));
  }
}
