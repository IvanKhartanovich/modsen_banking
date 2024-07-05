import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_form/cubit_form.dart';

class TextInputCubit extends StatefulWidget {
  final FieldCubit<String> fieldCubit;
  final String? hintText;

  const TextInputCubit({
    Key? key,
    required this.fieldCubit,
    this.hintText,
  }) : super(key: key);

  @override
  _TextInputCubitState createState() => _TextInputCubitState();
}

class _TextInputCubitState extends State<TextInputCubit> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.fieldCubit.state.value);
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    widget.fieldCubit.setValue(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FieldCubit<String>, FieldCubitState<String>>(
      bloc: widget.fieldCubit,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            errorText: null, //?????????????????????????????
          ),
          onChanged: (value) => widget.fieldCubit.setValue(value),
        );
      },
    );
  }
}
