import 'package:bloc/bloc.dart';
import 'package:portfolio_app/features/home/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  final HomeRepository homeOfflineRepository;

  HomeBloc({
    required this.homeRepository,
    required this.homeOfflineRepository,
  }) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  void getHero() async {
    homeRepository.getHero();
  }
}
