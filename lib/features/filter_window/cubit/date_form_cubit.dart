import 'package:bloc/bloc.dart';
import 'date_form_state.dart';

class DateFormCubit extends Cubit<DateFormState> {
  DateFormCubit() : super(DateFormState());

  void validateStartDate(String date) {
    emit(state.copyWith(startDateError: date.isEmpty));
  }

  void validateEndDate(String date) {
    emit(state.copyWith(endDateError: date.isEmpty));
  }

  void submit() {
    validateStartDate(state.startDate);
    validateEndDate(state.endDate);
    if (!state.startDateError && !state.endDateError) {}
  }

  void setStartDate(String date) {
    emit(state.copyWith(startDate: date));
  }

  void setEndDate(String date) {
    emit(state.copyWith(endDate: date));
  }
}
