import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'create_new_pass_state.dart';

class CreateNewPassCubit extends Cubit<CreateNewPassState> {
  CreateNewPassCubit() : super(CreateNewPassInitial());

  static CreateNewPassCubit get(context) => BlocProvider.of(context);

  bool isNewPassword = false;
  bool isNewPasswordConfig = false;

  void ChangingObscureNewPass() {
    isNewPassword = !isNewPassword;
    emit(ChangingObscureNewPassState());
  }

  void ChangingObscureNewPassConfig() {
    isNewPasswordConfig = !isNewPasswordConfig;
    emit(ChangingObscureNewPassConfigState());
  }
}
