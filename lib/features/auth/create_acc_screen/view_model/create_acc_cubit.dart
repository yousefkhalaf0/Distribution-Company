import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'create_acc_state.dart';

class CreateAccCubit extends Cubit<CreateAccState> {
  CreateAccCubit() : super(CreateAccInitial());

  static CreateAccCubit get(context) => BlocProvider.of(context);

  bool isPasswordReg = false;
  bool isPasswordRegConfig = false;
  bool isChecked = false;

  void ChangingObscureReg() {
    isPasswordReg = !isPasswordReg;
    emit(ChangeCreateAccRegObscure());
  }

  void ChangingObscureRegConfig() {
    isPasswordRegConfig = !isPasswordRegConfig;
    emit(ChangeCreateAccRegConfigObscure());
  }

  void CheckBoxChecked(bool value) {
    isChecked = value;
    emit(CheckBoxCheckedState());
  }
}
