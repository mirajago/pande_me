import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;

Future registerWithEmailAndPassword(String mail, String password) async {
  try {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: mail, password: password);
    FirebaseUser user = result.user;
  } catch (e) {}
}

Future<FirebaseUser> handleSignIn() async {
  final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
  print("signed in " + user.displayName);
  return user;
}

// final GoogleSignIn googleSignIn = GoogleSignIn();
// final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

// String name;
// String email;
// String imageUrl;

// void signOutGoogle() async {
//   await googleSignIn.signOut();
// }

// void signOutFirebase() async {
//   await firebaseAuth.signOut();
// }

// Future<String> signIn() async {
//   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//   final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

//   final AuthCredential credential = GoogleAuthProvider.getCredential(
//       idToken: googleSignInAuthentication.idToken,
//       accessToken: googleSignInAuthentication.accessToken);

//   final AuthResult authResult = await firebaseAuth.signInWithCredential(credential);
//   final FirebaseUser firebaseUser = authResult.user;

//   name = firebaseUser.displayName;
//   email = firebaseUser.email;
//   imageUrl = firebaseUser.photoUrl;

//   // Only taking the first part of the name, i.e., First Name
//   if (name.contains(" ")) {
//     name = name.substring(0, name.indexOf(" "));
//   }

//   final FirebaseUser currentUser = await firebaseAuth.currentUser();
//   assert(firebaseUser.uid == currentUser.uid);

//   return 'signInWithGoogle succeeded: $firebaseUser';

// }
