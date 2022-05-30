import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthServices {
  Future<UserCredential> createUserWithEmailAndPassword(
      {required email, required password});
  Future<UserCredential> signInWithEmailAndPassword(
      {required email, required password});
  Future<void> signOut();
  Future<void> sendPasswordResetEmail({required email});
  Future<User?> getCurrentUser();
}

class FirebaseAuthServicesImpl implements FirebaseAuthServices {
  final FirebaseAuth auth;

  FirebaseAuthServicesImpl({required this.auth});

  @override
  Future<UserCredential> createUserWithEmailAndPassword(
      {required email, required password}) async {
    return auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(
      {required email, required password}) async {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<User?> getCurrentUser() async {
    return auth.currentUser;
  }

  @override
  Future<void> sendPasswordResetEmail({required email}) async {
    return auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> signOut() async {
    return auth.signOut();
  }
}
