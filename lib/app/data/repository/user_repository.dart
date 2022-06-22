import 'package:k_11_app/app/data/models/user_model.dart';
import 'package:k_11_app/app/data/provider/user_api.dart';

class UserRepository {
  final UserAPI _userRepository = UserAPI();

  Future<dynamic> getUser() async => await _userRepository.getUser();
}
