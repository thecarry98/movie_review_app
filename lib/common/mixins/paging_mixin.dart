import 'package:aicycle_collection_app/base/network/errors/error.dart';
import 'package:aicycle_collection_app/base/network/errors/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../base/network/models/base_data.dart';

class BaseCommonMethodMixin {
  void pagingControllerOnLoad<T>(
    int page,
    PagingController<int, T> pagingController,
    Either<BaseError, List<T>> either, {
    int limit = 10,
    String? errorMessage,
    Function(String)? onError,
    Function()? onSuccess,
  }) {
    either.fold(
      (l) {
        final error = errorMessage ?? l.getErrorMessage;
        pagingController.error = error;
        onError?.call(error);
      },
      (r) {
        final isLastPage = r.length < limit;
        if (isLastPage) {
          pagingController.appendLastPage(r);
        } else {
          pagingController.appendPage(r, page + 1);
        }
        onSuccess?.call();
      },
    );
  }

  void pagingControllerOnLoadBaseList<T>(
    int page,
    PagingController<int, T> pagingController,
    Either<BaseError, BaseListData<T>> either, {
    int limit = 10,
    String? errorMessage,
    Function(String)? onError,
    Function()? onSuccess,
  }) {
    either.fold(
      (l) {
        final error = errorMessage ?? l.getErrorMessage;
        pagingController.error = error;
        onError?.call(error);
      },
      (r) {
        // pagingControllerUpdateList(pagingController, r.data!);
        final isLastPage = r.data!.length < limit;
        if (isLastPage) {
          pagingController.appendLastPage(r.data!);
        } else {
          pagingController.appendPage(r.data!, page + 1);
        }
        onSuccess?.call();
      },
    );
  }

  void pagingControllerRemoveItem<T>(
    PagingController<int, T> pagingController,
    int index,
  ) {
    final oldList = pagingController.itemList;
    if (oldList == null) return;
    final newList = List.of(oldList);
    newList.removeAt(index);
    pagingController.itemList = newList;
  }

  void pagingControllerUpdateItem<T>(
    PagingController<int, T> pagingController,
    int index,
    T newItem,
  ) {
    final oldList = pagingController.itemList;
    if (oldList == null) return;
    final newList = List.of(oldList);
    newList[index] = newItem;
    pagingController.itemList = newList;
  }

  void pagingControllerAddItem<T>(
    PagingController<int, T> pagingController,
    T item, [
    int index = 0,
  ]) {
    final oldList = pagingController.itemList;
    if (oldList == null) return;
    final newList = List.of(oldList);
    newList.insert(index, item);
    pagingController.itemList = newList;
  }
}
