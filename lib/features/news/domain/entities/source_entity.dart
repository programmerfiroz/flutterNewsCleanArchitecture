// lib/features/news/domain/entities/source_entity.dart

import 'package:equatable/equatable.dart';

class SourceEntity extends Equatable {
  final String? id;
  final String name;

  SourceEntity({this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
