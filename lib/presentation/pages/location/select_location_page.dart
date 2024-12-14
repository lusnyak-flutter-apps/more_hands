import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SelectLocationView();
  }
}

class _SelectLocationView extends StatefulWidget {
  const _SelectLocationView();

  @override
  State<_SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<_SelectLocationView> {
  Set<String> selected = <String>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.select,
        action: () {},
      ).paddingOnly(bottom: 16.h),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 24.w,
        title: Text(
          context.localized.selectLocation,
          style: body28SemiBoldStyle,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
            const MHSearchField(),
            16.w.heightBox,
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child: MoreHandsAssets.icons.compass
                          .svg(height: 18.r)
                          .paddingOnly(right: 4.w)),
                  TextSpan(text: selected.join(","), style: body16MediumStyle)
                ],
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.only(bottom: 56.h, top: 8.h),
              itemBuilder: (itemContext, index) {
                final value = "Location $index";
                return ListTile(
                  onTap: () {
                    if (mounted) {
                      if (selected.contains(value)) {
                        selected.remove(value);
                      } else {
                        selected.add(value);
                      }
                      setState(() {});
                    }
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  shape: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MHColors.grayColor)),
                  title: Text(
                    "Location $index",
                    style: body16MediumStyle,
                  ),
                  trailing: selected.contains(value)
                      ? MoreHandsAssets.icons.check.svg()
                      : null,
                );
              },
              itemCount: 20,
            ).expanded()
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
      ),
    );
  }
}
