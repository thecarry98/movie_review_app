import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_review_app/features/home/presentation/home_page.dart';

import '../../../base/base_widget.dart';
import '../../../common/index.dart';
import '../../../gen/assets.gen.dart';
import 'bloc/core_bloc.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState
    extends BaseState<CorePage, CoreEvent, CoreState, CoreBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const CoreEvent.init());
  }

  @override
  Widget renderUI(BuildContext context) {
    return Scaffold(
      body: _Screen(),
      bottomNavigationBar: _XBottomNavigationBar(),
    );
  }
}

class _Screen extends StatelessWidget {
  const _Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final index = context.select((CoreBloc bloc) => bloc.state.index);
    return IndexedStack(
      index: index,
      children: [
        HomePage(),
        HomePage(),
        HomePage(),
        HomePage(),
      ],
    );
  }
}

class _XBottomNavigationBar extends StatelessWidget {
  const _XBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.select((CoreBloc bloc) => bloc);
    final index = context.select((CoreBloc bloc) => bloc.state.index);
    return BottomNavigationBar(
      iconSize: 30.sp,
      items: [
        _buildBottomItems(
            icon: Assets.svg.movieReel.svg(),
            activeIcon: Assets.svg.movieReelActive.svg()),
        _buildBottomItems(
            icon: Assets.svg.eventTicket.svg(),
            activeIcon: Assets.svg.eventTicketActive.svg()),
        _buildBottomItems(
            icon: Assets.svg.alarm.svg(),
            activeIcon: Assets.svg.alarmActive.svg()),
        _buildBottomItems(
            icon: Assets.svg.user.svg(),
            activeIcon: Assets.svg.userActive.svg()),
      ],
      currentIndex: index ?? 0,
      onTap: (i) => bloc.add(CoreEvent.changeIndex(i)),
    );
  }
}

BottomNavigationBarItem _buildBottomItems({
  required Widget icon,
  Widget? activeIcon,
  String? label,
}) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      child: icon,
    ),
    activeIcon: activeIcon,
    label: label ?? '',
  );
}
