import 'package:hive_flutter/hive_flutter.dart';
import '../../models/profile_model.dart';

class HiveService {
  static const String boxName = 'profileBox';

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProfileModelAdapter());
    await Hive.openBox<ProfileModel>(boxName);
  }

  ProfileModel? getProfile() {
    final box = Hive.box<ProfileModel>(boxName);
    return box.get('profile');
  }

  Future<void> saveProfile(ProfileModel profile) async {
    final box = Hive.box<ProfileModel>(boxName);
    await box.put('profile', profile);
  }
}
