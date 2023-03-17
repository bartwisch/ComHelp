import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ComHelpFirebaseUser {
  ComHelpFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ComHelpFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ComHelpFirebaseUser> comHelpFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ComHelpFirebaseUser>(
      (user) {
        currentUser = ComHelpFirebaseUser(user);
        return currentUser!;
      },
    );
