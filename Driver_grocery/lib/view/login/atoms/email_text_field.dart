import 'package:flutter/material.dart';

import '../../../app/components/molecules/underlined_bordered_text_field_molecule.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController? controller;

  const EmailTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return UnderlinedBorderTextFieldMolecule(
      label: "Email",
      isDark: false,
      inputType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      textController: controller,
    );
  }
}
