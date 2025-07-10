import 'dart:developer';

import 'package:dio/dio.dart';
import '../models/profile_model.dart';

class ProfileService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://mock.api/'));

  Future<ProfileModel> fetchProfile() async {
    log('[GET] /profile → Simulating fetch');

    await Future.delayed(const Duration(seconds: 1));

    // Simulated API response
    final response = {
      'name': 'Karthick Venkatesan',
      'bio': 'Flutter Developer',
      'email': 'karthick231997@gmail.com',
      'phone': '8838337735',
      'location': 'Chennai, India'
    };

    return ProfileModel.fromJson(response);
  }

  Future<void> updateProfile(ProfileModel profile) async {
    log('[PUT] /profile → Simulating update');
    log('Payload: ${profile.toJson()}');

    await Future.delayed(const Duration(milliseconds: 500));
  }
}
