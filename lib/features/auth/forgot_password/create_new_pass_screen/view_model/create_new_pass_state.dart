part of 'create_new_pass_cubit.dart';

@immutable
sealed class CreateNewPassState {}

final class CreateNewPassInitial extends CreateNewPassState {}

final class ChangingObscureNewPassState extends CreateNewPassState {}

final class ChangingObscureNewPassConfigState extends CreateNewPassState {}
