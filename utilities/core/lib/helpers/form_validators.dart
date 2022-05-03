class MyFormValidator {
  static String? validateAge(String? age) {
    if (age == null) {
      return 'Input field cannot be empty';
    }
    if (int.tryParse(age) == null) {
      return 'Invalid age';
    }
    if (int.tryParse(age) != null) {
      if (int.tryParse(age)! < 13) {
        return 'Age must be from 13 and above';
      }
    }

    return null;
  }

  static String? validateAmount(String num) {
    num = num.replaceAll(',', '');
    if (num == '') return null;
    if (double.tryParse(num) == null) return 'Input a valid amount';
    return null;
  }

  static String? validateContent(String? val) {
    final value = val ?? '';
    if (value.isEmpty) return 'Input field cannot be empty';

    return null;
  }

  static String? validateEmail(String val) {
    final value = val.trim();
    if (value.isEmpty) return 'Input field cannot be empty';

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    if (!(regex.hasMatch(value))) return 'Please enter a valid email address';
    return null;
  }

  static String? validateName(String val) {
    final value = val.trim();
    if (value.isEmpty) return 'Input field cannot be empty';
    if (!RegExp('^[a-zA-Z]{3,}(?: [a-zA-Z]+){0,2}\$').hasMatch(value)) {
      return 'Uhhh oh! provide a valid name';
    }
    return null;
  }

  static String? validatePassword(String val) {
    final value = val.trim();

    if (value.isEmpty) return 'Input field cannot be empty';

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }
}
