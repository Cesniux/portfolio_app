part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final HomeHero homeHero;
  final List<HomePost> homePosts;
  // final HomeWork homeWorks;

  HomeSuccess({
    required this.homeHero,
    required this.homePosts,
    // required this.homeWorks,
  });
}

class HomeError extends HomeState {
  final String error;
  HomeError(this.error);
}
