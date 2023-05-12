import 'dart:convert';

import 'package:flutter/foundation.dart';

class Question {
  final String id;
  final String question;
  final List<String> answers;
  final String correctAnswer;
  Question({
    required this.id,
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  Question copyWith({
    String? id,
    String? question,
    List<String>? answers,
    String? correctAnswer,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      answers: answers ?? this.answers,
      correctAnswer: correctAnswer ?? this.correctAnswer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answers': answers,
      'correctAnswer': correctAnswer,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      question: map['question'],
      answers: List<String>.from(map['answers']),
      correctAnswer: map['correctAnswer'],
    );
  }

  factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final id = snapshot.id;
    data['id'] = id;
    return Question.fromMap(data);
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Question(id: $id, question: $question, answers: $answers, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question &&
        other.id == id &&
        other.question == question &&
        listEquals(other.answers, answers) &&
        other.correctAnswer == correctAnswer;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        answers.hashCode ^
        correctAnswer.hashCode;
  }
}

class QueryDocumentSnapshot {
  get id => null;

  data() {}
}

List<Question> question = [
  Question(
    id: '1',
    question: 'لا يسمح للتجاوز في المرتفعات والمنخفضات بسبب؟',
    answers: [
      'ممنوع التجاوز',
      'سبب الأحوال الجوية',
      'انعدام الرؤية في الاتجاه المعاكس'
    ],
    correctAnswer: 'انعدام الرؤية في الاتجاه المعاكس',
  ),
  Question(
    id: '2',
    question: 'حاجة النساء الحوامل لحزام الأمان',
    answers: ['الحزام خطر عليها', 'ضرورية', 'ضروري جدا'],
    correctAnswer: 'ضروري جدا',
  ),
  Question(
    id: '3',
    question: ' عند اقترابك من تقاطع الدوار تكون الأفضلية لمن',
    answers: ['لمن بخارج الدوار', 'لمن بداخل الدوار', 'من يسير بخط مستقيم'],
    correctAnswer: 'لمن بداخل الدوار',
  ),
  Question(
    id: '4',
    question: 'وجود خط متصل في مسارك يعني',
    answers: ['منع التجاوز', 'منح التجاوز', 'عدم التجاوز'],
    correctAnswer: 'منع التجاوز',
  ),
];
