part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  final List<User>? userList;
  final bool isUser;
  final List<User>? userInfo;

  const UserState({this.userList, this.isUser = false, this.userInfo});

  @override
  List<Object?> get props => [userList, isUser];
}

class UserInitial extends UserState {
  UserInitial() : super(userList: null, isUser: false, userInfo: null);
}

class userLoad extends UserState {
  final List<User>? newUserList;
  final bool newIsUser;
  const userLoad({this.newUserList, required this.newIsUser}) : super(userList: newUserList, isUser: newIsUser);
  @override
  List<Object?> get props => [newUserList, newIsUser];
}

class userDetail extends UserState {
  final List<User>? newUserInfo;
  const userDetail({this.newUserInfo}) : super(userInfo: newUserInfo);
  List<Object?> get props => [newUserInfo];
}
