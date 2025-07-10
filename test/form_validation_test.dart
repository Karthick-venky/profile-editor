import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

void main() {
  group('Form Validation', () {
    test('Email field should fail on invalid input', () {
      final validator = FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.email(),
      ]);

      expect(validator(null), isNotNull);
      expect(validator(''), isNotNull);
      expect(validator('invalid-email'), isNotNull);
      expect(validator('test@example.com'), null);
    });

    test('Phone field should fail if non-numeric', () {
      final validator = FormBuilderValidators.numeric();

      expect(validator('abc123'), isNotNull);
      expect(validator('9876543210'), null);
    });
  });
}
