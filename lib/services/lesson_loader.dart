import 'dart:convert';
import 'package:flutter/services.dart';

class LessonPack {
  final String title;
  final String background;
  final List<String> props;
  final List<dynamic> story;
  final Map<String, dynamic> quiz;
  final String reward;

  LessonPack({required this.title, required this.background, required this.props, required this.story, required this.quiz, required this.reward});

  factory LessonPack.fromJson(Map<String, dynamic> json) {
    return LessonPack(
      title: json['title'],
      background: json['background'],
      props: List<String>.from(json['props']),
      story: json['story'],
      quiz: json['quiz'],
      reward: json['reward'],
    );
  }
}

class LessonLoader {
  static Future<LessonPack> load(String filename) async {
    final data = await rootBundle.loadString('assets/lessons/$filename');
    final jsonResult = json.decode(data);
    return LessonPack.fromJson(jsonResult);
  }
}
