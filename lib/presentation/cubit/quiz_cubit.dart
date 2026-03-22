import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:qwiz_app/data/models/quiz_model.dart';
import 'package:qwiz_app/domain/usecases/get_quiz_usecase.dart';
import 'package:qwiz_app/presentation/cubit/base_cubit.dart';

part 'quiz_state.dart';

@Injectable()
class QuizCubit extends BaseCubit<QuizState> {
  final GetQuizUsecase _getQuizUsecase;

  QuizCubit({required GetQuizUsecase getQuizUsecase})
    : _getQuizUsecase = getQuizUsecase,
      super(QuizInitial());

  void getQuiz() async {
    emit(Loading());
    try {
      final result = await _getQuizUsecase.call(null);
      result.fold(
        (failure) => emit(Error(failure.message)),
        (response) => emit(Success(quizModel: response)),
      );
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
