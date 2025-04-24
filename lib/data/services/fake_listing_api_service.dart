import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../constants.dart';
import '../model/listing_model.dart';
import 'listing_api_service.dart';

@Singleton(as: ListingApiService)
class FakeListingApiService implements ListingApiService {
  @override
  Future<ListingModel> addListing(ListingModel listing) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteListing(String id) {
    // TODO: implement deleteListing
    throw UnimplementedError();
  }

  @override
  Future<ListingModel> getListing(String id) {
    // TODO: implement getListing
    throw UnimplementedError();
  }
  //
  // @override
  // Future<List<ListingModel>> getListings() async {
  //   final jsonData = await _readJson();
  //   try {
  //     print("JSON DATA : ${jsonData}");
  //     return (jsonData as List<dynamic>)
  //         .map((item) => ListingModel.fromJson(item as Map<String, dynamic>))
  //         .toList();
  //   } on FormatException catch (e) {
  //     throw FormatException("Invalid JSON format: ${e.message}");
  //   } on TypeError catch (e) {
  //     throw const FormatException("Type mismatch in listings data");
  //   } catch (e) {
  //     throw Exception("Failed to load listings: $e");
  //   }
  // }

  @override
  Future<List<ListingModel>> getListings() async {
    final jsonData = await _readJson();
    try {
      final listingsData = jsonData['listings'] as List<dynamic>;
      return listingsData
          .map((item) => ListingModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } on FormatException catch (error) {
      throw FormatException("Invalid JSON format: ${error.message}");
    } on TypeError catch (error) {
      throw FormatException("Type mismatch in listings data: ${error.toString()}");
    } catch (error) {
      throw Exception("Failed to load listings: $error");
    }
  }

  @override
  Future<void> updateListing(ListingModel listing) {
    // TODO: implement updateListing
    throw UnimplementedError();
  }
}

// Future<dynamic> _readJson() async {
//   final String response = await rootBundle.loadString(dataPath);
//   final data = await json.decode(response);
//   Future.delayed(const Duration(seconds: 2));
//   return data;
// }
Future<Map<String, dynamic>> _readJson() async {
  final String response = await rootBundle.loadString(dataPath);
  return json.decode(response) as Map<String, dynamic>;
}