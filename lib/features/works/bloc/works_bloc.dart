import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/features/works/models/works_work.dart';
import 'package:portfolio_app/features/works/repositories/works_firebase_repository.dart';

part 'works_event.dart';
part 'works_state.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  final WorksFirebaseRepository worksFirebaseRepository;
  WorksBloc({required this.worksFirebaseRepository}) : super(WorksInitial()) {
    on<WorksFetch>(_onWorksFetch);
  }

  Future<void> _onWorksFetch(WorksEvent event, Emitter<WorksState> emit) async {
    emit(WorksLoading());
    final worksList = await worksFirebaseRepository.fetchWorksData();
    emit(WorksLoaded(worksList: worksList));
  }
}
