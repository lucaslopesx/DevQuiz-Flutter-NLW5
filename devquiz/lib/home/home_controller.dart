import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_reposiroty.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/answer_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/question_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/quiz_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();

    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
