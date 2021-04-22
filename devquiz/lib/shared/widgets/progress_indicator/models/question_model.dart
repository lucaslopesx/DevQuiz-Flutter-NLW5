import 'dart:convert';

import 'package:devquiz/shared/widgets/progress_indicator/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answer;

  QuestionModel({required this.answer, required this.title})
      : assert(
          answer.length == 4,
        );

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answer': answer.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      answer: List<AnswerModel>.from(map['answer']?.map((x) => AnswerModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
