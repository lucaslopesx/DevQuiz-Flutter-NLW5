import 'package:devquiz/shared/widgets/progress_indicator/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answer;

  QuestionModel({required this.answer, required this.title})
      : assert(
          answer.length == 4,
        );
}
