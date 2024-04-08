part of 'create_acc_cubit.dart';

@immutable
sealed class CreateAccState {}

final class CreateAccInitial extends CreateAccState {}

final class ChangeCreateAccRegObscure extends CreateAccState {}

final class ChangeCreateAccRegConfigObscure extends CreateAccState {}

final class CheckBoxCheckedState extends CreateAccState {}
