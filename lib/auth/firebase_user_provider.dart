import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CatsFoodFirebaseUser {
  CatsFoodFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CatsFoodFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CatsFoodFirebaseUser> catsFoodFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CatsFoodFirebaseUser>(
      (user) {
        currentUser = CatsFoodFirebaseUser(user);
        return currentUser!;
      },
    );
