import 'package:equatable/equatable.dart';

class Genress extends Equatable{
  final String name;
  final int id;

  Genress( { required this.name, required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => throw [name,id];

}