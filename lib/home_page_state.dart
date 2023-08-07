import 'package:equatable/equatable.dart';
import 'package:riverpod_generator_test/models.dart';

class HomePageState extends Equatable {
  final User? user;

  const HomePageState({this.user});

  HomePageState copyWith({User? Function()? user}) {
    return HomePageState(user: user != null ? user() : this.user);
  }

  @override
  List<Object?> get props => [user];
}
