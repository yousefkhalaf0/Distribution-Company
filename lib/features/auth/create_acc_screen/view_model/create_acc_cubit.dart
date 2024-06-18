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

  void changingObscureReg() {
    isPasswordReg = !isPasswordReg;
    emit(ChangeCreateAccRegObscure());
  }

  void changingObscureRegConfig() {
    isPasswordRegConfig = !isPasswordRegConfig;
    emit(ChangeCreateAccRegConfigObscure());
  }

  void checkBoxChecked(bool value) {
    isChecked = value;
    emit(CheckBoxCheckedState());
  }
}
