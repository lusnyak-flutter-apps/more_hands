import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHRadioListTile<T> extends StatelessWidget {
  const MHRadioListTile({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    this.onChanged,
  });

  final String label;
  final T value;
  final T groupValue;
  final ValueChanged<T?>? onChanged;

  bool get checked => value == groupValue;

  @override
  Widget build(BuildContext context) {
    Widget? leading = checked
        ? MoreHandsAssets.icons.on.svg(height: 24.r)
        : MoreHandsAssets.icons.off.svg(height: 24.r);

    return ListTile(
      enabled: onChanged != null,
      onTap: onChanged != null
          ? () {
              if (checked) {
                onChanged!(null);
                return;
              }
              if (!checked) {
                onChanged!(value);
              }
            }
          : null,
      leading: leading,
      title: Text(
        label,
        style: body12Style,
      ),
    );
  }
}
