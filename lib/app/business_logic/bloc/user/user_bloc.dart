import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:k_11_app/app/data/models/user_model.dart';
import 'package:k_11_app/app/data/repository/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    final UserRepository _userRepository = UserRepository();

    on<UserLoadEvent>((event, emit) async {
      final List user = await _userRepository.getUser();
      final data = user.map((e) => User.fromJson(e)).toList();
      emit(userLoad(newIsUser: true, newUserList: data));
    });
    on<UserDetailEvent>((event, emit) async {
      final List<User> detail = [];

      final List user = await _userRepository.getUser();
      final data = user.map((e) => User.fromJson(e)).toList();
      detail.add(data[event.idUser - 1]);
      print(detail);
      emit(userDetail(newUserInfo: detail));
    });
  }
}
