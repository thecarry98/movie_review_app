import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_review_app/features/movie_detail/domain/entities/movie_detail_entity.dart';

import '../../../../common/index.dart';
import 'detail_child.dart';
import 'review_child.dart';
import 'showtime_child.dart';

class MovieDetailAuth extends StatefulWidget {
  const MovieDetailAuth(
      {super.key, required this.expandedHeight, this.movieEntity});
  final double expandedHeight;
  final MovieDetailEntity? movieEntity;

  @override
  State<MovieDetailAuth> createState() => _MovieDetailAuthState();
}

class _MovieDetailAuthState extends State<MovieDetailAuth>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<String> title = ['Detail', 'Review', 'Showtime'];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: MediaQuery.of(context).size.height -
            widget.expandedHeight -
            20.h -
            MediaQuery.of(context).padding.top,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5.r,
              blurRadius: 7.r,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: Column(
            children: [
              Container(
                height: 50.h,
                // margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.r),
                  ),
                  border: Border.all(
                    width: 1,
                    color: AppColors.color0f1b2b.withOpacity(0.3),
                  ),
                ),
                child: TabBar(
                  padding: const EdgeInsets.all(3),
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.color0f1b2b,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: AppColors.colore51937,
                  ),
                  labelStyle: AppStyles.t16l.copyWith(
                    fontSize: 15.sp,
                  ),
                  unselectedLabelStyle: AppStyles.t16l.copyWith(
                    fontSize: 15.sp,
                  ),
                  controller: tabController,
                  tabs: [
                    Tab(text: title[0]),
                    Tab(text: title[1]),
                    Tab(text: title[2]),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      DetailPage(
                        movieDetail: widget.movieEntity?.movieDetail,
                      ),
                      ReviewPage(movieReview: widget.movieEntity?.movieReview),
                      ShowtimePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
