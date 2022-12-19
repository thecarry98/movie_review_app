import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/index.dart';
import '../../data/model/movie_model.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    this.isSearching,
    required this.movie,
  });
  final bool? isSearching;
  final MovieModel? movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      // color: Colors.red,
      width: ScreenUtil().screenWidth / 2,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  movie?.image ??
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          RatingBar.builder(
            itemSize: 15,
            // initialRating: (movie?.imDbRating as double)/2,
            initialRating: double.tryParse(movie?.imDbRating ?? '8') ?? 8 / 2,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // print(rating);
            },
            ignoreGestures: true,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            movie?.title ?? '',
            maxLines: 1,
            style: AppStyles.t16l.copyWith(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Expanded(
            child: Row(
              children: [
                const Text('Crime'),
                SizedBox(width: 5.w),
                const Text('|'),
                SizedBox(width: 5.w),
                Text(isSearching == false ? '${movie?.year}' : '1900'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
