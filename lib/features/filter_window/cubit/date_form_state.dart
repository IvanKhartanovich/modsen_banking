class DateFormState {
  final String startDate;
  final String endDate;
  final bool startDateError;
  final bool endDateError;

  DateFormState({
    this.startDate = '',
    this.endDate = '',
    this.startDateError = false,
    this.endDateError = false,
  });

  DateFormState copyWith({
    String? startDate,
    String? endDate,
    bool? startDateError,
    bool? endDateError,
  }) {
    return DateFormState(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      startDateError: startDateError ?? this.startDateError,
      endDateError: endDateError ?? this.endDateError,
    );
  }
}
