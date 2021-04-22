import 'package:devquiz/core/app_images.dart';
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

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Lucas Lopes",
      photoUrl:
          "https://avatars.githubusercontent.com/u/68665689?s=400&u=7bbd2a5a686695737fe8a8abdc23bf713648285d&v=4",
    );
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          level: Level.facil,
          questionAnswered: 1,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answer: [
              AnswerModel(title: "Estou curtindo!!", isRight: true),
              AnswerModel(title: "Muito bom!!"),
              AnswerModel(title: "Show!!"),
              AnswerModel(title: "Top!!"),
            ]),
            QuestionModel(title: "Está curtindo o Flutter?", answer: [
              AnswerModel(title: "Estou curtindo!!", isRight: true),
              AnswerModel(title: "Muito bom!!"),
              AnswerModel(title: "Show!!"),
              AnswerModel(title: "Top!!"),
            ])
          ])
    ];
    state = HomeState.sucess;
  }
}
