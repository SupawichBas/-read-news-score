import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ProjectFFirebaseUser {
  ProjectFFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ProjectFFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ProjectFFirebaseUser> projectFFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ProjectFFirebaseUser>(
            (user) => currentUser = ProjectFFirebaseUser(user));
