import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../../../app/components/molecules/underlined_bordered_text_field_molecule.dart';
import '../../../app/core/value_managers/app_strings.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController? controller;

  const PasswordTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return UnderlinedBorderTextFieldMolecule(
      textController: controller,
      obscure: true,
      label: AppStrings.password,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.none,
      isDark: false,
      suffixIcon: const Icon(FlutterRemix.eye_close_line),
    );
  }
}
