import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
            child: FormBuilder(
              key: _fbKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/home_avatar.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 24,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileEmailLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  FleetimeTextField(
                    hintText: 'zane.227@gmail.com',
                    name: 'email',
                    keyboardType: TextInputType.emailAddress,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileNameLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  FleetimeTextField(
                    hintText: 'Novian Andika',
                    name: 'name',
                    keyboardType: TextInputType.name,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileDateOfBirthLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileAgeLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  FleetimeTextField(
                    hintText: '20',
                    name: 'age',
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileHeightLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  FleetimeTextField(
                    hintText: '170',
                    name: 'height',
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 36,
                  ),
                  const ProfileLabel(
                    name: StringConstant.profileWeightLabel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  FleetimeTextField(
                    hintText: '60',
                    name: 'weight',
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FleetimeTextField extends StatelessWidget {
  const FleetimeTextField({
    super.key,
    required this.name,
    required this.hintText,
    this.validator,
    required this.keyboardType,
    this.controller,
  });

  final String name;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      name: name,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: false,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 24,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}

class ProfileLabel extends StatelessWidget {
  const ProfileLabel({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toUpperCase(),
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width / 24,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
        letterSpacing: 0.8,
      ),
    );
  }
}
