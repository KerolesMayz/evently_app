import 'package:flutter/material.dart';

class EventDataModel {
  final String title;
  final String description;
  final DateTime date;
  final TimeOfDay time;
  final String categoryId;
  final int? lat;
  final int? lng;

  const EventDataModel(
      {required this.title,
      required this.description,
      required this.date,
      required this.time,
      required this.categoryId,
      this.lat,
      this.lng});
}
