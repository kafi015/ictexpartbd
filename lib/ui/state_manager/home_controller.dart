

import 'dart:developer';

import 'package:get/get.dart';
import 'package:ictexpartbd/data/utils/urls.dart';
import 'package:ictexpartbd/domain/model/student_review_model.dart';

import '../../data/services/network_caller.dart';

class HomeController extends GetxController {
  bool _getStudentReviewInProgress = false;
  StudentReviewModel _studentReviewModel = StudentReviewModel();

  bool get getStudentReviewInProgress => _getStudentReviewInProgress;
  StudentReviewModel get studentReviewModel => _studentReviewModel;

  Future<bool> getStudentReview() async {
    _getStudentReviewInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: Urls.studentReviewUrl);
    log(response.toString());
    _getStudentReviewInProgress = false;
    if (response != '') {
      _studentReviewModel = StudentReviewModel.fromJson(response);
      log(_studentReviewModel.data!.last.name.toString());
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}