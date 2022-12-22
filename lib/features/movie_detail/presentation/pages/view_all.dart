import 'package:flutter/material.dart';
import 'package:movie_review_app/common/enum/detail_view.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({super.key, this.detailViewEnum, this.movieDetal});
  final DetailViewEnum? detailViewEnum;
  final MovieDetailModel? movieDetal;

  @override
  Widget build(BuildContext context) {
    switch (detailViewEnum) {
      case DetailViewEnum.actors:
        return Container();
      case DetailViewEnum.images:
        return Container();
      default:
        return Container();
    }
  }
}
