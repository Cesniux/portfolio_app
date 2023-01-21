import 'package:bloc/bloc.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';
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
    var futures = <Future>[
      homeRepository.fetchHeroData(),
      homeRepository.fetchPostsData(),
      homeRepository.fetchWorksData()
    ];
    var results = await Future.wait(futures);
    var heroData = results[0];
    var postData = results[1];
    var workData = results[2];
    emit(HomeSuccess(
        homeHero: heroData, homePosts: postData, homeWorks: workData));
  }
}
