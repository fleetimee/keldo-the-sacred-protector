import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/pages/profile/profile_ui.dart';
import 'package:fleetime_quiz/ui/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    super.key,
    required GlobalKey<FormBuilderState> fbKey,
  }) : _fbKey = fbKey;

  final GlobalKey<FormBuilderState> _fbKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _fbKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/home_avatar.jpg'),
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
        ],
      ),
    );
  }
}
