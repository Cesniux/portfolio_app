import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio_app/features/works/models/works_work.dart';

part 'works_event.dart';
part 'works_state.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  WorksBloc() : super(WorksInitial()) {
    on<WorksFetch>(_onWorksFetch);
  }
}

Future<void> _onWorksFetch(WorksEvent event, Emitter<WorksState> emit) async {
  emit(WorksLoading());
  List<WorksWork> worksList = [];
  final future = await FirebaseFirestore.instance
      .collection('works')
      .orderBy('year', descending: true)
      .get();
  for (var element in future.docs) {
    worksList.add(WorksWork.fromJson(element.data()));
  }
  emit(WorksLoaded(worksList: worksList));
}


// class WorksBloc extends Bloc<WorksEvent, WorksState> {
//   WorksBloc() : super(WorksInitial()) {
//     on<WorksEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }
