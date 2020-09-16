import 'package:meta/meta.dart';

class User {
  final String uid;

  String firstName;
  String lastName;

  List<String> classes;

  int permissionLevel;

  User(
      {@required this.uid,
      @required this.firstName,
      @required this.lastName,
      this.classes,
      int permissionLevel})
      : this.permissionLevel = permissionLevel ?? 0;

  bool get canAddPublicWebsite => permissionLevel >= 3;

  bool get canEditPublicWebsite => permissionLevel >= 3;
}
