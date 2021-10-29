import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  get user => _auth.currentUser;

  //SIGN UP METHOD
  Future signUp({String email, String password, String name, String mobile}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
        // name:name,
        // mobile:mobile,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future signIn({String email, String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN GOOGLE METHOD
  Future<String> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      await _auth.signInWithCredential(credential);
      return null;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return e.message;
    }
  }

  // Future<bool> googleSignIn() async {
  //   GoogleSignInAccount googleSignInAccount = await gooleSignIn.signIn();
  //
  //   if (googleSignInAccount != null) {
  //     GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
  //
  //     AuthCredential credential = GoogleAuthProvider.credential(
  //         idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);
  //
  //     UserCredential result = await auth.signInWithCredential(credential);
  //
  //     User user = await auth.currentUser;
  //     print(user.uid);
  //
  //     return Future.value(true);
  //   }
  // }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
