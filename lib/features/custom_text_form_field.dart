import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_validator/form_validator.dart';

class CustomTextFormField extends StatefulWidget{
  const CustomTextFormField({super.key, required this.labelText, this.initialValue, this.validator, this.keyboardType, this.fieldController, this.fieldMask, this.onTapOutsideCallback, this.color});

  final String labelText;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController? fieldController;
  final TextInputFormatter? fieldMask;
  final Function(PointerDownEvent)? onTapOutsideCallback;
  final Color? color;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  late final TextEditingController fieldController;
  late final String? Function(String?)? validator;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    fieldController = widget.fieldController ?? TextEditingController();
    validator = widget.validator ?? ValidationBuilder().minLength(3).required('error').build();

    fieldController.value = TextEditingValue(text: widget.initialValue ?? '');
  }

  String? validate(val) {
   return (val == null || val.isEmpty) ? 'err' : null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      style: Theme.of(context).textTheme.bodyMedium,
      inputFormatters: widget.fieldMask != null ? [widget.fieldMask!] : [],
      validator: (val) {
        setState(() => _hasError = validator!(val) != null ? true : false);
        return validator!(val);
        },
      keyboardType: widget.keyboardType,
      onTapOutside: widget.onTapOutsideCallback,
      decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.labelMedium,
          filled: true,
          fillColor: !_hasError ? const Color(0xFFF6F6F9) : const Color(0xFFEB5757).withOpacity(0.15),
          border: const UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
        errorStyle: const TextStyle(height: 0, fontSize: 0)
      ),

    );
  }
}