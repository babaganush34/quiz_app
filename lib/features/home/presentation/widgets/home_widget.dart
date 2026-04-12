import 'package:flutter/material.dart';
import 'package:qwiz_app/core/constants/app_constants.dart';
import 'package:qwiz_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:qwiz_app/features/home/presentation/widgets/start_button_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.bloc, required this.state});
  final HomeBloc bloc;
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    return state.maybeWhen(
      orElse: () => const Center(child: CircularProgressIndicator()),
      loadedCategories: (categories, amount, difficulty, type, categoryId) {
        return Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(AppConstants.appIllustrationImage, height: 100),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Questions amount:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('$amount'),
                ],
              ),
              Slider(
                value: amount.toDouble(),
                min: 1,
                max: 30,
                onChanged: (value) {
                  bloc.add(HomeEvent.updateAmount(value.toInt()));
                },
              ),
              Text('Category', style: TextStyle(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: DropdownButton<int?>(
                  isExpanded: true,
                  dropdownColor: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  elevation: 2,
                  itemHeight: 60,
                  menuMaxHeight: 300,
                  value: categoryId,
                  items: [
                    const DropdownMenuItem(value: null, child: Text('All')),
                    ...categories.map(
                      (c) => DropdownMenuItem(value: c.id, child: Text(c.name)),
                    ),
                  ],
                  onChanged: (value) {
                    bloc.add(HomeEvent.updateCategory(value));
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text('Difficulty', style: TextStyle(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: DropdownButton<String?>(
                  isExpanded: true,
                  dropdownColor: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  elevation: 2,
                  itemHeight: 60,
                  menuMaxHeight: 300,
                  value: difficulty,
                  items: [
                    const DropdownMenuItem(value: 'easy', child: Text('Easy')),
                    const DropdownMenuItem(
                      value: 'medium',
                      child: Text('Medium'),
                    ),
                    const DropdownMenuItem(value: 'hard', child: Text('Hard')),
                  ],
                  onChanged: (value) {
                    bloc.add(HomeEvent.updateDifficulty(value));
                  },
                ),
              ),
              StartButtonWidget(
                amount: amount,
                difficulty: difficulty,
                type: type,
                categoryId: categoryId ?? 0,
                category: categoryId != null
                    ? categories.firstWhere((c) => c.id == categoryId).name
                    : 'All',
              ),
            ],
          ),
        );
      },
    );
  }
}
