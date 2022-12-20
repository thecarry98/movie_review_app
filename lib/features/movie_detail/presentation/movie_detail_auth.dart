import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_review_app/features/movie_detail/presentation/bloc/movie_detail_bloc.dart';

import '../../../base/base_widget.dart';

class MovieDetailAuth extends StatefulWidget {
  const MovieDetailAuth({super.key, required this.id});
  final String id;

  @override
  State<MovieDetailAuth> createState() => _MovieDetailAuthState();
}

class _MovieDetailAuthState extends BaseState<MovieDetailAuth, MovieDetailEvent,
    MovieDetailState, MovieDetailBloc> {
  @override
  Widget renderUI(BuildContext context) {
    return Container();
  }
}
