import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

String name;
String email;
String imageUrl;

void signOutGoogle() async {
  await googleSignIn.signOut();
}

void signOutFirebase() async {
  await firebaseAuth.signOut();
}

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken);

  final AuthResult authResult =
      await firebaseAuth.signInWithCredential(credential);
  final FirebaseUser firebaseUser = authResult.user;

  name = firebaseUser.displayName;
  email = firebaseUser.email;
  imageUrl = firebaseUser.photoUrl;

  // Only taking the first part of the name, i.e., First Name
  if (name.contains(" ")) {
    name = name.substring(0, name.indexOf(" "));
  }

  final FirebaseUser currentUser = await firebaseAuth.currentUser();
  assert(firebaseUser.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $firebaseUser';
}
