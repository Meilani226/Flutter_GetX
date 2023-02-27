import 'dart:convert';

import 'package:get/get.dart';
import 'package:latihann/app/data/entertaiment_response.dart';
import 'package:latihann/app/data/headline_response.dart';
import 'package:latihann/app/data/sports_response.dart';
import 'package:latihann/app/data/technology_response.dart';

import '../../../utils/api.dart';


class DashboardController extends GetxController {
  final _getConnect = GetConnect();
   Future<headlinerResponse> getHeadline() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.headline);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return headlinerResponse.fromJson(jsonDecode(response.body));
   }

  Future<sportsResponse> getSports() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.sports);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return sportsResponse.fromJson(jsonDecode(response.body));

  }

  Future<entertaimentResponse> getEntertaiment() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.sports);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return entertaimentResponse.fromJson(jsonDecode(response.body));

  }

  Future<technologyResponse> getTechnology() async {
	//memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
  final response = await _getConnect.get(BaseUrl.sports);
	//mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
  return technologyResponse.fromJson(jsonDecode(response.body));

  }


  //TODO: Implement DashboardController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void increment() => count.value++;
}
