import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/works/bloc/works_bloc.dart';
import 'package:portfolio_app/features/works/sections/works_section.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class WorksView extends StatelessWidget with BaseMixin {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorksBloc()..add(WorksFetch()),
      child: BlocBuilder<WorksBloc, WorksState>(
        builder: (context, state) {
          return LayoutBuilder(builder: (context, constrains) {
            final screenType = getScreenType(getMaxWidth(context));
            if (state is WorksInitial || state is WorksLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is WorksLoaded) {
              switch (screenType) {
                case ScreenType.mobile:
                  return WorksSection.mobile(worksList: state.worksList);
                case ScreenType.tablet:
                  return WorksSection.tablet(
                    worksList: state.worksList,
                  );
                case ScreenType.desktop:
                  return WorksSection.desktop(
                    worksList: state.worksList,
                  );
              }
            }
            return const Center(
              child: Text('Error.'),
            );
          });
        },
      ),
    );
  }
}
