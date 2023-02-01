import 'package:portfolio_app/features/works/models/works_work.dart';
import 'package:portfolio_app/features/works/repositories/works_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class WorksFirebaseRepository implements WorksRepository {
  final FirebaseService firebaseService;

  WorksFirebaseRepository({required this.firebaseService});

  @override
  Future<List<WorksWork>> fetchWorksData() async {
    final List<WorksWork> worksList = [];
    final response = await firebaseService.worksRef.get();

    for (var element in response.docs) {
      final Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      worksList.add(WorksWork.fromJson(data));
    }
    return worksList;
  }
}
