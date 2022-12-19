import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_review_app/base/bloc/bloc_status.dart';
import 'package:movie_review_app/common/index.dart';
import 'package:movie_review_app/common/widgets/textfields/textfields/index.dart';
import 'package:movie_review_app/features/home/presentation/pages/display_movie.dart';

import '../../../base/base_widget.dart';
import '../../../gen/assets.gen.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeEvent, HomeState, HomeBloc>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    bloc.add(HomeEvent.init(0));
    // bloc.add(HomeEvent.init(1));
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        hasBack: false,
        appBarWidget: blocBuilder(
          (c, s) => s.isSearching == false
              ? Text(
                  'Start Movie',
                  style: AppStyles.t24m.copyWith(color: Colors.black),
                )
              : NoBorderTextField(
                  autofocus: true,
                  onChanged: (text) {},
                ),
        ),
        actions: [
          InkWell(
            onTap: () => bloc.add(const HomeEvent.searching()),
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: blocBuilder(
                (c, s) => s.isSearching == false
                    ? Assets.svg.zoom.svg()
                    : const Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40.r),
                ),
                border: Border.all(
                  width: 1.w,
                  color: AppColors.color0f1b2b.withOpacity(0.3),
                ),
              ),
              child: _tab()),
          Expanded(
            child: blocBuilder(
              (c, s) => s.status == BaseStateStatus.loading
                  ? Center(child: CircularProgressIndicator())
                  : _tabView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tab() {
    return TabBar(
      padding: EdgeInsets.all(5.w),
      labelColor: AppColors.white,
      unselectedLabelColor: AppColors.color0f1b2b,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0.r,
        ),
        color: AppColors.colore51937,
      ),
      labelStyle: AppStyles.t12r.copyWith(
        fontSize: 17.sp,
        // color: color0f1b2b,
      ),
      unselectedLabelStyle: AppStyles.t12r.copyWith(
        fontSize: 17.sp,
      ),
      controller: tabController,
      tabs: const [
        Tab(text: 'Now Showing'),
        Tab(text: 'Coming Soon'),
      ],
    );
  }

  Widget _tabView() {
    return TabBarView(
      controller: tabController,
      children: [
        DisPlayMovie(index: 0),
        DisPlayMovie(index: 1),
      ],
    );
  }
}
