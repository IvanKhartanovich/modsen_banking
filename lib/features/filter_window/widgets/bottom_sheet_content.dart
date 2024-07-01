import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/date_form_cubit.dart';
import '../cubit/date_form_state.dart';
import 'error_text_field.dart';
import 'submit_button.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  _BottomSheetContentState createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DateFormCubit(),
      child: BlocBuilder<DateFormCubit, DateFormState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 16.0,
                right: 16.0,
                top: 16.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      'Filter by date',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Start date',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ErrorTextField(
                    controller: _startDateController,
                    hintText: 'Select start date',
                    hasError: state.startDateError,
                    onTap: () {
                      // Реализация календаря (1)
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'End date',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ErrorTextField(
                    controller: _endDateController,
                    hintText: 'Select end date',
                    hasError: state.endDateError,
                    onTap: () {
                      // Реализация календаря
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const Divider(
                    color: Colors.grey,
                    indent: 0,
                    endIndent: 0,
                    thickness: 1,
                  ),
                  const SizedBox(height: 16.0),
                  SubmitButton(
                    onPressed: () {
                      context.read<DateFormCubit>().submit();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
