import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '/core/extensions/settings_helper.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_fonts.dart';
import '../texts/custom_text.dart';

class ImagePickerFormField extends FormField<File?> {
  ImagePickerFormField({
    super.key,
    ImagePickerInputController? controller,
    ValueChanged<File?>? onChanged,
    super.validator,
    super.autovalidateMode,
  }) : super(
          initialValue: controller?.value,
          builder: (state) {
            void onChangedHandler(File? value) {
              if (state.mounted) {
                state.didChange(value);
              }
              if (onChanged != null) {
                onChanged(value);
              }
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ImagePickerField(
                  controller: controller,
                  side: state.hasError && controller?.value == null
                      ? const BorderSide(color: Colors.redAccent, width: 1)
                      : BorderSide.none,
                  onChanged: onChangedHandler,
                ),
                if (state.hasError && controller?.value == null)
                  Text(
                    state.errorText!,
                    style: TextStyle(
                        fontSize: AppFontSizes.s13, color: Colors.red[900]),
                  ),
                if (state.value != null && controller?.originalName != null)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          controller!.originalName,
                          style: TextStyle(
                              fontSize: AppFontSizes.s14,
                              color: AppColors.primaryColor,
                              fontWeight: AppFontWeights.semiBold),
                        ),
                        IconButton(
                            onPressed: () {
                              controller.value = null;
                            },
                            icon: Icon(Icons.cancel, color: AppColors.grey600)),
                      ],
                    ),
                  ),
              ],
            );
          },
        );
}

class ImagePickerField extends StatefulWidget {
  final ImagePickerInputController? controller;
  final ValueChanged<File?>? onChanged;
  final BorderSide side;

  const ImagePickerField({
    super.key,
    this.controller,
    this.onChanged,
    this.side = BorderSide.none,
  });

  @override
  State<ImagePickerField> createState() => _ImagePickerFieldState();
}

class _ImagePickerFieldState extends State<ImagePickerField> {
  late ImagePickerInputController controller;

  @override
  void initState() {
    super.initState();

    controller = widget.controller ?? ImagePickerInputController();
    controller.addListener(() {
      widget.onChanged?.call(controller.value);
    });
  }

  @override
  void didUpdateWidget(covariant ImagePickerField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      controller = widget.controller ?? ImagePickerInputController();
      controller.addListener(() {
        widget.onChanged?.call(controller.value);
      });
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () async {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image != null) {
          controller.file(
            newValue: File(image.path),
            name: image.name,
            type: image.mimeType ?? image.name.split(".").last,
          );
        }
      },
      child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (_, imageFile, child) {
            return Container(
              height: 225,
              width: double.infinity,
              decoration: ShapeDecoration(
                color: context.color.background,
                image: imageFile != null
                    ? DecorationImage(
                        image: NetworkImage(imageFile.path),
                        fit: BoxFit.fill,
                      )
                    : null,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  side: widget.side,
                ),
              ),
              child: imageFile == null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_upload_rounded,
                          size: 40,
                          color: AppColors.grey600,
                        ),
                        CustomText(
                          text: "Drop Image or Click Here",
                          color: AppColors.grey600,
                          fontSize: AppFontSizes.s14,
                          fontWeight: AppFontWeights.bold,
                        ),
                      ],
                    )
                  : null,
              // ),
            );
          }),
    );
  }
}

class ImagePickerInputController extends ValueNotifier<File?> {
  ImagePickerInputController({File? initialValue}) : super(initialValue);

  late String originalName;
  late String typeOf;

  String get fileName => value?.path.split('/').last ?? '';

  file({required File newValue, required String type, required String name}) {
    if (newValue.path == value?.path) return;

    value = newValue;
    originalName = name;
    typeOf = type;
    notifyListeners();
  }
}
