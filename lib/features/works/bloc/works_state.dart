part of 'works_bloc.dart';

abstract class WorksState extends Equatable {
  const WorksState();

  @override
  List<Object> get props => [];
}

class WorksInitial extends WorksState {}

class WorksLoading extends WorksState {}

class WorksLoaded extends WorksState {
  final List<WorksWork> worksList;

  const WorksLoaded({required this.worksList});
}

class WorksError extends WorksState {
  final String error;

  const WorksError(this.error);
}
