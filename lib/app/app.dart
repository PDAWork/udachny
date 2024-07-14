import 'package:dfa_media/common/app_theme.dart';
import 'package:dfa_media/di/app_depends.dart';
import 'package:dfa_media/di/app_depends_provider.dart';
import 'package:dfa_media/features/home/presentation/state/banner/banner_cubit.dart';
import 'package:dfa_media/features/home/presentation/state/product/product_cubit.dart';
import 'package:dfa_media/features/home/presentation/state/story/story_cubit.dart';
import 'package:dfa_media/features/home/presentation/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key, required this.depends});

  final AppDepends depends;

  @override
  Widget build(BuildContext context) {
    return AppDependsProvider(
      key: const ValueKey("DependencyInjection"),
      depends: depends,
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                StoryCubit(getStory: AppDependsProvider.of(context).getStory)
                  ..init(),
          ),
          BlocProvider(
            create: (context) =>
                BannerCubit(getStory: AppDependsProvider.of(context).getBanner)
                  ..init(),
          ),
          BlocProvider(
            create: (context) => ProductCubit(
                getProduct: AppDependsProvider.of(context).getProduct)
              ..init(),
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
