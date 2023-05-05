import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: StringConstant.profileTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                height: MediaQuery.of(context).size.height / 36,
              ),
              const ProfileLabel(
                name: StringConstant.profileNameLabel,
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
                height: MediaQuery.of(context).size.height / 36,
              ),
              const ProfileLabel(
                name: StringConstant.profileHeightLabel,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 36,
              ),
              const ProfileLabel(
                name: StringConstant.profileWeightLabel,
              ),
            ],
          ),
        ),
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
