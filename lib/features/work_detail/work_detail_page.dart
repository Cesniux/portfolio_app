import 'package:flutter/material.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_appbar.dart';

class WorkDetailPage extends StatelessWidget {
  const WorkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: WorkDetailAppBar()),
      body: Center(
        child: Text('hi hello'),
      ),
    );
  }
}
