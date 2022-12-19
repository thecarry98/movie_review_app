import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_review_app/features/home/presentation/widgets/movie_card.dart';
import '../../../../base/base_widget.dart';
import '../bloc/home_bloc.dart';

class DisPlayMovie extends StatefulWidget {
  const DisPlayMovie({super.key, required this.index});
  final int index;

  @override
  State<DisPlayMovie> createState() => _DisPlayMovieState();
}

class _DisPlayMovieState
    extends BaseShareState<DisPlayMovie, HomeEvent, HomeState, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(HomeEvent.init(widget.index));
  }

  @override
  Widget renderUI(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: blocBuilder(
        (c, s) => AlignedGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5.w,
          mainAxisSpacing: 20.h,
          itemBuilder: (c, i) => MovieCard(movie: s.listMovie?[i]),
          itemCount: 10,
        ),
      ),
    );
  }
}
