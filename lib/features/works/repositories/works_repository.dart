import 'package:portfolio_app/features/works/models/works_work.dart';

abstract class WorksRepository {
  Future<List<WorksWork>> fetchWorksData();
}
