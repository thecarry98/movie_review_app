import 'package:flutter/material.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key, this.movieReview});
  final List<MovieReviewModel>? movieReview;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Review'));
  }
}
