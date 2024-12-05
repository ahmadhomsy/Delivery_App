validInput({
  required String val,
  required int min,
  required int max,
  required String type,
}) {
  if (type == "username") {
    if (!RegExp("^(?=.{8,20})(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])")
        .hasMatch(val)) {
      return "not valid username";
    }
  }
  if (type == "email") {
    if (val.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(val)) {
      return "not valid email";
    }
  }
  if (type == "phone") {
    if (val.length != 10) {
      return "not valid phone";
    }
  }
  if (val.isEmpty) {
    return "can`t be empty";
  }
  if (val.length > max) {
    return "can`t be larger than $max";
  }
  if (val.length < min) {
    return "can`t be less than $min";
  }
}
