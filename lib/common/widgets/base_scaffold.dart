import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? body;
  final bool hasTabBar;
  final double? appBarHeight;
  final bool? addKey;
  final bool? resizeToAvoidBottomInset;
  final String? backgroundImage;
  final bool? hasDismissKeyboard;
  final bool? marginTop;
  final bool? isFull;
  final bool? isBottom;
  final Widget? bottomNavigation;
  final bool extendBodyBehindAppBar;
  final Color backgroundColor;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Function(bool)? showFloat;
  final Function(bool)? onScroll;
  final double? paddingTop;
  final Key? scaffoldKey;
  final Widget? endDrawer;

  const BaseScaffold({
    Key? key,
    this.appBar,
    this.marginTop,
    this.addKey,
    this.isBottom,
    this.backgroundImage,
    this.backgroundColor = Colors.white,
    this.isFull,
    this.extendBodyBehindAppBar = false,
    this.hasDismissKeyboard,
    this.body,
    this.bottomNavigation,
    this.resizeToAvoidBottomInset,
    this.showFloat,
    this.onScroll,
    this.hasTabBar = false,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.paddingTop,
    this.appBarHeight,
    this.scaffoldKey,
    this.endDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          key: scaffoldKey,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
          bottomNavigationBar: bottomNavigation,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          backgroundColor: backgroundColor,
          appBar: appBar == null
              ? null
              : PreferredSize(
                  preferredSize: Size.fromHeight(
                    appBarHeight ??
                        AppBar().preferredSize.height +
                            (hasTabBar ? kToolbarHeight.h : 0),
                  ),
                  child: appBar!,
                ),
          body: Stack(
            children: [
              if ((backgroundImage ?? "").isNotEmpty)
                Container(
                  height: 1.sh,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundImage!),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              else
                const SizedBox.shrink(),
              Container(
                // bottom: isBottom ?? true,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: paddingTop ?? 0,
                  ),
                  child: body ?? const SizedBox(),
                ),
              ),
            ],
          ),
          endDrawer: endDrawer,
        ),
      ),
    );
  }
}
