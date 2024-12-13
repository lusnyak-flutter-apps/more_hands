import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uikit/src/themes/mh_colors.dart';
import 'package:uikit/src/themes/mh_text_styles.dart';

class MHImagePicker extends StatelessWidget {
  const MHImagePicker._({
    super.key,
    required this.child,
    this.onPicked,
    this.limit = 5,
    this.onPickedFile,
    this.multiPick = false,
  });

  factory MHImagePicker.multiple({
    Key? key,
    int limit = 5,
    required Widget child,
    ValueChanged<List<File>>? onPicked,
  }) {
    return MHImagePicker._(
      key: key,
      limit: limit,
      onPicked: onPicked,
      multiPick: true,
      child: child,
    );
  }

  factory MHImagePicker({
    Key? key,
    required Widget child,
    ValueChanged<File>? onPicked,
  }) {
    return MHImagePicker._(
      key: key,
      limit: 1,
      onPickedFile: onPicked,
      multiPick: false,
      child: child,
    );
  }

  final Widget child;
  final int limit;
  final ValueChanged<List<File>>? onPicked;
  final ValueChanged<File>? onPickedFile;
  final bool multiPick;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      tooltip: '',
      // padding: EdgeInsets.zero,
      position: PopupMenuPosition.under,
      onSelected: (menu) {
        if (menu == 0) {
          openImagePicker();
        }
        if (menu == 1) {
          openImagePicker(source: ImageSource.camera);
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem<int>(
            height: 40,
            value: 0,
            child: menuItem('Галерея', CupertinoIcons.photo_on_rectangle),
          ),
          const PopupMenuDivider(),
          PopupMenuItem<int>(
            height: 40,
            value: 1,
            child: menuItem(
              'Сделать снимок',
              CupertinoIcons.photo_camera,
            ),
          ),
        ];
      },
      child: child,
    );
  }

  Widget menuItem(String title, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: body16MediumStyle.copyWith(color: MHColors.whiteColor),
        ),
        Icon(
          icon,
          color: MHColors.whiteColor,
        ),
      ],
    );
  }

  Future<void> openImagePicker({
    ImageSource source = ImageSource.gallery,
  }) async {
    if (source == ImageSource.gallery) {
      if(multiPick) {
        final pickedFiles = await ImagePicker().pickMultiImage(
          limit: limit,
          imageQuality: 50,
        );
        if (pickedFiles.isNotEmpty) {
          final imageFiles =
          pickedFiles.map((pickedFile) => File(pickedFile.path)).toList();
          onPicked?.call(imageFiles);
        }
      } else {
        final pickedFile = await ImagePicker().pickImage(
          source: source,
          imageQuality: 50,
        );
        if (pickedFile != null) {
          final imageFile =  File(pickedFile.path);
          onPickedFile?.call(imageFile);
        }
      }
    } else {
      final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
      );
      if (pickedFile != null) {
        final imageFile = File(pickedFile.path);
        if(multiPick) {
          onPicked?.call([imageFile]);
        } else {
          onPickedFile?.call(imageFile);
        }
      }
    }
  }
}
