import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/answer_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/question_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/quiz_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Lucas Lopes",
      photoUrl:
          "https://avatars.githubusercontent.com/u/68665689?s=400&u=7bbd2a5a686695737fe8a8abdc23bf713648285d&v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          level: Level.facil,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answer: [
              AnswerModel(title: "Estou curtindo!!", isRight: true),
              AnswerModel(title: "Muito bom!!"),
              AnswerModel(title: "Show!!"),
              AnswerModel(title: "Top!!"),
            ])
          ])
    ];
  }
}
