import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_review_app/features/home/presentation/widgets/movie_card.dart';
import 'package:movie_review_app/features/movie_detail/presentation/movie_detail_auth.dart';
import 'package:movie_review_app/routes/app_pages.dart';
import 'package:movie_review_app/routes/app_routes.dart';
import '../../data/model/movie_model.dart';

class DisPlayMovie extends StatefulWidget {
  DisPlayMovie({this.listMovie});
  final List<MovieModel>? listMovie;

  @override
  State<DisPlayMovie> createState() => _DisPlayMovieState();
}

class _DisPlayMovieState extends State<DisPlayMovie> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: AlignedGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5.w,
        mainAxisSpacing: 20.h,
        itemBuilder: (c, i) => GestureDetector(
            onTap: () => context.router.push(
                  MovieDetailAuthRoute(id: widget.listMovie?[i].id ?? ''),
                ),
            child: MovieCard(movie: widget.listMovie?[i])),
        itemCount: 10,
      ),
    );
  }
}
