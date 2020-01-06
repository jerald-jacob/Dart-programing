use an EasyListView to implement pagination in flutter

new EasyListView(
      loadMore: hasNewPage,
      onLoadMore: () {
        if (hasNewPage) {
          hasNewPage = false;
          _diaryAPICall(false,true); // call the api 
        }
      },
      loadMoreWhenNoData: false,
      itemCount: _diaryList.length,
      itemBuilder: (context, index) {
        return new Row(
          children: <Widget>[
            datePrinter(index),
            timeLineCreator(index),
          ],
        );
      },
    );
    //// API call
    

  void _diaryAPICall(bool diaryListClear, bool isPageCountIncrement) async
  {
    if (diaryListClear) {
      _diaryList.clear();
      pageCount = 1;
      setState(() {
        _handleError = false;
        showLoadingProgress = true;
      });
    }
    else {
      if (isPageCountIncrement) {
        pageCount++;
      }
    }


    String _search = _textEditingController.text.trim();
    if (_search == null && _search == "") {
      _search = "-1";
    }


    _presenter.doFetchDiaryListFromServer(lastUpdated, context,
      startDate: _filterData?.fromDate?.millisecondsSinceEpoch ?? -1,
      endDate: _filterData?.toDate?.millisecondsSinceEpoch ?? -1,
      search: _search,
      pageC: pageCount,
    );
  }

//
//heare is a veriable called pageC it will reprecent the page count as limit

more about pagination refer the links

https://blog.solutelabs.com/paginate-your-data-in-flutter-7744995febd1
https://pub.dev/packages/paging
https://medium.com/@jun.chenying/flutter-tutorial-part-5-listview-pagination-scroll-up-to-load-more-ed132f6a06be
