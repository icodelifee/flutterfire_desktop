part of flutterfire_auth_dart;

/// A UserCredential is returned from authentication requests such as
/// [FirebaseAuth.createUserWithEmailAndPassword].
class UserCredential {
  // ignore: public_member_api_docs
  UserCredential._({
    required this.auth,
    this.additionalUserInfo,
    this.credential,
  });

  /// The current FirebaseAuth instance.
  final FirebaseAuth auth;

  /// Returns additional information about the user, such as whether they are a
  /// newly created one.
  final AdditionalUserInfo? additionalUserInfo;

  /// The users [AuthCredential].
  final AuthCredential? credential;

  /// Returns a [User] containing additional information and user specific
  /// methods.
  User? get user {
    return auth.currentUser;
  }
}
