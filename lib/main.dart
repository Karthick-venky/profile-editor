import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_editor_app/services/profile_service.dart';
import 'app.dart';
import 'data/local/hive_service.dart';
import 'view_model/bloc/profile_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final api = ProfileService();
  final hive = HiveService();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileBloc(api: api, hive: hive)..add(LoadProfileEvent()),
      child: const App(),
    );
  }
}
