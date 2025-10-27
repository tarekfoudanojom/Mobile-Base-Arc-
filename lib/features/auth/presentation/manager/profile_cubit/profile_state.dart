part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  final ProfileModel? model;
  final bool changed;

  const ProfileState({this.model, required this.changed});
}

final class ProfileInitial extends ProfileState {
  const ProfileInitial() : super(changed: false);

  @override
  List<Object> get props => [changed];
}

class ProfileUpdateState extends ProfileState {
  const ProfileUpdateState({required super.model, required super.changed});

  @override
  List<Object> get props => [changed];
}
