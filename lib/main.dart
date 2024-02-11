import 'package:flutter/material.dart';
import 'package:flutter_news_bloc/app.dart';
import 'package:flutter_news_bloc/di/di_container.dart';
import 'package:flutter_news_bloc/di/di_init.dart';

void main() {
  initDI(diContainer);
  runApp(const NewsApp());
}
