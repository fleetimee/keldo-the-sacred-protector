import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/pages/profile/components/profile_ui_form.dart';
import 'package:fleetime_quiz/ui/widget/appbar.dart';
import 'package:fleetime_quiz/ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: StringConstant.profileTitle,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ProfileForm(
              fbKey: _fbKey,
            ),
          ),
        ),
      ),
      bottomNavigationBar: FleetimeButton(
        text: StringConstant.profileButton,
        onPressed: () {
          if (_fbKey.currentState!.saveAndValidate()) {
            debugPrint(_fbKey.currentState!.value.toString());
          }
        },
      ),
    );
  }
}
