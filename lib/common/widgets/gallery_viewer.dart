import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:rxdart/rxdart.dart';

class _Const {
  static const animationDuration = 300;

  static const Duration imageVisibleDuration = Duration(milliseconds: 500);

  static const Duration disableVisibleChangeDuration =
      Duration(milliseconds: 1000);
  static const pointerDifference = 50;
}

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
    this.footerWidget,
  }) : pageController = PageController(initialPage: initialIndex);
  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<String> galleryItems;
  final Axis scrollDirection;
  final Widget? footerWidget;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  late int currentIndex = widget.initialIndex;
  bool _moved = false;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final _disableVisibleChangeObs = BehaviorSubject<bool>();
  final _visibleChangeObs = BehaviorSubject<bool>();
  bool _visibleChange = true;
  final ValueNotifier<bool> _visible = ValueNotifier<bool>(true);
  Offset _position = Offset.zero;

  @override
  void initState() {
    super.initState();
    if (widget.galleryItems.length > 1) {
      _disableVisibleChangeObs
          .debounceTime(_Const.disableVisibleChangeDuration)
          .listen((event) {
        if (!_moved) {
          _visibleChange = true;
        }
      });
    }
    _visibleChangeObs.debounceTime(_Const.imageVisibleDuration).listen((event) {
      if (_visibleChange) {
        _visible.value = !_visible.value;
      }
    });
  }

  @override
  void dispose() {
    _disableVisibleChangeObs.close();
    _visibleChangeObs.close();
    super.dispose();

    //if (this.sub != null) this.sub?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerMove: (PointerMoveEvent event) {
        _visible.value = false;
        _visibleChange = false;
        if ((event.position.dy - _position.dy).abs() >
            _Const.pointerDifference) {
          if (!_moved) {
            setState(() {
              _moved = true;
            });
          }
        }
      },
      onPointerDown: (PointerDownEvent event) {
        _position = event.position;
        _visibleChangeObs.add(true);
      },
      onPointerUp: (PointerUpEvent event) {
        _position = Offset.zero;
        // this._visiable.value = false;
        _disableVisibleChangeObs.add(true);
        setState(() {
          _moved = false;
        });
      },
      onPointerCancel: (_) {
        // this._visiable.value = false;
        setState(() {
          _moved = false;
        });
      },
      child: Dismissible(
        direction: DismissDirection.vertical,
        key: const Key('#photo_view'),
        onDismissed: (_) {
          context.popRoute();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: _Const.animationDuration),
          curve: Curves.ease,
          color: _moved ? Colors.transparent : Colors.black,
          constraints: BoxConstraints.expand(
            height: 1.sh,
            width: 1.sw,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  PhotoViewGallery.builder(
                    scaleStateChangedCallback:
                        (PhotoViewScaleState scaleState) {
                      if (scaleState != PhotoViewScaleState.initial) {
                        _visibleChange = false;
                        _visible.value = false;
                      } else {
                        _visibleChange = true;
                      }
                    },
                    scrollPhysics: const BouncingScrollPhysics(),
                    builder: _buildItem,
                    itemCount: widget.galleryItems.length,
                    loadingBuilder: widget.loadingBuilder,
                    backgroundDecoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    pageController: widget.pageController,
                    onPageChanged: onPageChanged,
                    scrollDirection: widget.scrollDirection,
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: _visible,
                    builder: (BuildContext ctx, bool value, Widget? child) {
                      return Positioned(
                        width: 1.sw,
                        top: 0,
                        left: 0,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back,
                                    color: Colors.white),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ),
                            if (widget.galleryItems.length > 1) ...[
                              Text(
                                '${currentIndex + 1}/${widget.galleryItems.length}',
                                // style: AppStyles.s16w700.copyWith(
                                //   color: Colors.white,
                                // ), todo: default text style
                              ),
                            ],
                          ],
                        ),
                      );
                    },
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: _visible,
                    builder: (BuildContext ctx, bool value, Widget? child) {
                      return Positioned(
                        width: 1.sw,
                        bottom: 0,
                        left: 0,
                        child: AnimatedOpacity(
                          duration: const Duration(
                            milliseconds: _Const.animationDuration,
                          ),
                          opacity: value ? 1 : 0,
                          child: widget.footerWidget,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final String url = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: CachedNetworkImageProvider(
        url,
      ),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * .5,
      maxScale: PhotoViewComputedScale.covered * 2,
      heroAttributes: PhotoViewHeroAttributes(tag: url),
    );
  }
}
