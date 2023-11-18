import 'package:flutter/material.dart';
import 'package:flutter_login_ui/model/event.dart';
import 'package:flutter_login_ui/shared/componets/constants.dart';
import 'package:flutter_login_ui/shared/network/local/TodoDbHelper.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class SearchController extends GetxController {
  List<Event> _all_event = [];
  List<Event> get all_event => _all_event;
  var isloading = true.obs;
  TodoDbHelper dbHelper = TodoDbHelper.db;

  @override
  void onInit() async {
    super.onInit();
    //getallevents().then((value) {});
  }

  Future<void> getallevents(
      {DateTime? firstVisibleDate, DateTime? lastVisibleDate}) async {
    String startdate; // this is the first visibile date in calendar
    String enddate; // this is the last visibile date in calendar

    if (firstVisibleDate != null && lastVisibleDate != null) {
      startdate = firstVisibleDate.toString().split(' ').first;
      enddate = lastVisibleDate.toString().split(' ').first;
    } else {
      DateTime currentDate = DateTime.now();

      startdate = new DateTime(currentDate.year, currentDate.month, 1)
          .toString()
          .split(' ')
          .first;
      enddate = new DateTime(currentDate.year, currentDate.month + 1, 0)
          .toString()
          .split(' ')
          .first;
    }

    print('firstDay ' + startdate);
    print('lastDay ' + enddate);

    print(isloading.value);
    _all_event = [];
    isloading.value = true;
    await dbHelper.database.rawQuery(
        "select * from $eventTable where date >= ? and date<=?",
        ['$startdate', '$enddate']).then((value) {
      value.forEach((element) {
        all_event.add(Event.fromJson(element));
      });

      all_event.forEach((element) {
        print(element.toJson());
      });
      isloading.value = false;
      print(isloading.value);
      update();
    });
  }
}
