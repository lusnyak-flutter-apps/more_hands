import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHSearchField extends StatefulWidget {
  const MHSearchField({
    super.key,
    this.hintText = "Поиск",
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.keyboardType,
    this.textInputAction,
    this.hintColor,
    this.minLines,
    this.backgroundColor,
    this.onClear,
  });

  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onClear;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? hintColor;
  final Color? backgroundColor;
  final int? minLines;

  @override
  State<MHSearchField> createState() => _MHSearchFieldState();
}

class _MHSearchFieldState extends State<MHSearchField> {
  TextEditingController? _textController;

  TextEditingController get _effectiveTextController =>
      widget.controller ?? (_textController ??= TextEditingController());

  @override
  void dispose() {
    _textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: widget.key,
      controller: _effectiveTextController,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      keyboardAppearance: Brightness.dark,
      textInputAction: TextInputAction.search,
      keyboardType: widget.keyboardType,
      style: body16Style,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor ?? MHColors.grayColorOpacity38,
          hintText: widget.hintText,
          hintStyle: widget.hintColor != null
              ? body16Style.copyWith(color: widget.hintColor)
              : null,
          prefixIcon: MoreHandsAssets.icons.search
              .svg()
              .paddingOnly(left: 10.w, right: 8.w),
          prefixIconConstraints: BoxConstraints(minWidth: 24.w),
          border: outlineInputBorder(radius: 24.r),
          enabledBorder: outlineInputBorder(radius: 24.r),
          focusedBorder: outlineInputBorder(radius: 24.r),
          errorBorder: outlineInputBorder(radius: 24.r),
          focusedErrorBorder: outlineInputBorder(radius: 24.r),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          suffix: InkWell(
            borderRadius: BorderRadius.circular(10.r),
            onTap: () {
              _effectiveTextController.clear();
              widget.onClear?.call();
              FocusScope.of(context).unfocus();
            },
            child: Icon(
              CupertinoIcons.clear_thick,
              color: MHColors.whiteColor,
              size: 16.r,
            ).paddingAll(2.r),
          )),
    );
  }
}
