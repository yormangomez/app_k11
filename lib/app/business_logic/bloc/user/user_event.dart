part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UserLoadEvent extends UserEvent {
  const UserLoadEvent();

  @override
  List<Object> get props => [];
}

class UserDetailEvent extends UserEvent {
  final int idUser;
  const UserDetailEvent({required this.idUser});

  @override
  List<Object> get props => [idUser];
}
