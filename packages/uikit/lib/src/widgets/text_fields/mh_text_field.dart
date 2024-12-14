import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uikit/uikit.dart';

class MHTextField extends StatelessWidget {
  const MHTextField({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.inputFormatters,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.hintColor,
    this.prefixIcon,
    this.minLines,
  });

  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? hintColor;
  final Widget? prefixIcon;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      maxLines: minLines != null && minLines! > 1 ? null : 1,
      minLines: minLines,
      controller: controller,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      validator: validator,
      inputFormatters: inputFormatters,
      keyboardAppearance: Brightness.dark,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      style: body16Style,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: MHColors.grayColorOpacity38,
        hintText: hintText,
        hintStyle:
            hintColor != null ? body16Style.copyWith(color: hintColor) : null,
        prefixIcon: prefixIcon?.paddingOnly(left: 10.w, right: 8.w),
        prefixIconConstraints: BoxConstraints(minWidth: 28.w),
      ),
    );
  }
}

// return Container(
//   decoration: BoxDecoration(
//     color: MHColors.grayColorOpacity38,
//     borderRadius: BorderRadius.circular(16.r),
//   ),
//   clipBehavior: Clip.hardEdge,
//   child: BackdropFilter(
//     filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
//     child: TextField(
//       style: body18Style,
//       decoration: InputDecoration(
//         filled: false,
//         hintText: hintText,
//         // fillColor: Colors.red
//       ),
//     ),
//   ),
// );
