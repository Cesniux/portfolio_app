import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

part 'works_event.dart';
part 'works_state.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  WorksBloc() : super(WorksInitial()) {
    on<WorksFetch>(_onWorksFetch);
  }
}

Future<void> _onWorksFetch(WorksEvent event, Emitter<WorksState> emit) async {
  emit(WorksLoading());
  final future = await FirebaseFirestore.instance.collection('works').get();
}


// class WorksBloc extends Bloc<WorksEvent, WorksState> {
//   WorksBloc() : super(WorksInitial()) {
//     on<WorksEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }
