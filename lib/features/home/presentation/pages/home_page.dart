import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:qwiz_app/core/constants/app_constants.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:qwiz_app/core/router/app_router.dart';
import 'package:qwiz_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:qwiz_app/features/home/presentation/widgets/home_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = getIt<HomeBloc>();

  @override
  void initState() {
    _bloc.add(const HomeEvent.loadCategories());
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.appName,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              getIt<AppRouter>().push(TalkerRoute());
            },
            icon: Icon(Icons.flutter_dash),
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: _bloc,
        builder: (context, state) {
          return state.when(
            initial: (amount, difficulty, type, categoryId) => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text(error.toString())),
            loadedCategories:
                (categories, amount, difficulty, type, categoryId) {
                  return Column(
                    children: [HomeWidget(bloc: _bloc, state: state)],
                  );
                },
          );
        },
      ),
    );
  }
}
