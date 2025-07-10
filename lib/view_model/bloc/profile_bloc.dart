import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/local/hive_service.dart';
import '../../models/profile_model.dart';
import '../../services/profile_service.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService api;
  final HiveService hive;

  ProfileBloc({required this.api, required this.hive}) : super(ProfileInitial()) {
    on<LoadProfileEvent>(_onLoad);
    on<UpdateProfileEvent>(_onUpdate);
  }

  void _onLoad(LoadProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
      var profile = hive.getProfile();
      if (profile == null) {
        profile = await api.fetchProfile();
        await hive.saveProfile(profile);
      }
      emit(ProfileLoaded(profile));
    } catch (_) {
      emit(ProfileError("Failed to load profile"));
    }
  }

  void _onUpdate(UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
      await api.updateProfile(event.profile);
      await hive.saveProfile(event.profile);
      emit(ProfileLoaded(event.profile));
    } catch (_) {
      emit(ProfileError("Failed to update profile"));
    }
  }
}
