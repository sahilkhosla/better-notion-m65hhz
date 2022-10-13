import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class BetterNotionFirebaseUser {
  BetterNotionFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BetterNotionFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BetterNotionFirebaseUser> betterNotionFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BetterNotionFirebaseUser>(
      (user) {
        currentUser = BetterNotionFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
