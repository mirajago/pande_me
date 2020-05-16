import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pandeme/model/user.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;

Future<User> signIn(String mail, String password) async {
  try {
    AuthResult result =
        await _auth.signInWithEmailAndPassword(email: mail, password: password);
    FirebaseUser user = result.user;
    return (_getUserfromFirebaseUser(user));
  } catch (e) {
    print(e.toString());
    return null;
  }
}

Future<User> registerWithEmailAndPassword(String mail, String password) async {
  try {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: mail, password: password);
    FirebaseUser user = result.user;
    return (_getUserfromFirebaseUser(user));
  } catch (e) {
    print(e.toString());
    return null;
  }
}

User _getUserfromFirebaseUser(FirebaseUser user) {
  return user != null ? User(user.uid, user.email) : null;
}

//   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//   final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

//   final AuthCredential credential = GoogleAuthProvider.getCredential(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//   );

//   final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
//   print("signed in " + user.displayName);
//   return user;
// }
