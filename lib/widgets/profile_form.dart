import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import '../models/profile_model.dart';
import '../view_model/bloc/profile_bloc.dart';
import '../core/utils/toast_util.dart';

class ProfileForm extends StatefulWidget {
  final ProfileModel profile;
  const ProfileForm({super.key, required this.profile});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      initialValue: {
        'name': widget.profile.name,
        'bio': widget.profile.bio,
        'email': widget.profile.email,
        'phone': widget.profile.phone,
        'location': widget.profile.location,
      },
      child: Container(
        child: Column(
          children: [
            _field('name', 'Name'),
            _field('bio', 'Bio'),
            _field('email', 'Email', validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.email()
            ]),
            _field('phone', 'Phone Number', validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric()
            ]),
            _field('location', 'Location'),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                if (_formKey.currentState?.saveAndValidate() ?? false) {
                  final values = _formKey.currentState!.value;
                  final updated = ProfileModel(
                    name: values['name'],
                    bio: values['bio'],
                    email: values['email'],
                    phone: values['phone'],
                    location: values['location'],
                  );
                  context.read<ProfileBloc>().add(UpdateProfileEvent(updated));
                  context.pop();
                  ToastUtil.show("Profile updated successfully");
                }
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              label: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _field(String name, String label, {List<String? Function(String?)>? validators}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: FormBuilderTextField(
        name: name,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: FormBuilderValidators.compose(validators ?? [FormBuilderValidators.required()]),
      ),
    );
  }
}
