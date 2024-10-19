// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
//
// import '../../../firebase_options.dart';
//
// class FireBaseService {
//   FireBaseService._privateConstructor();
//   static final FireBaseService _instance =
//       FireBaseService._privateConstructor();
//   static FireBaseService get instance => _instance;
//   late final FirebaseApp app;
//   late final FirebaseAuth _auth;
//   late final FirebaseFirestore _fireStore;
//   late final FirebaseDatabase _database;
//
//   Future init() async {
//     app = await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//     _auth = FirebaseAuth.instanceFor(app: app);
//     _fireStore = FirebaseFirestore.instanceFor(app: app);
//     _database = FirebaseDatabase.instanceFor(app: app);
//   }
//
//   Future<Either<String, UserCredential>> signUp(
//       {required emailAddress, required password}) async {
//     String errorMsg;
//     try {
//       final UserCredential credential =
//           await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailAddress,
//         password: password,
//       );
//       return right(credential);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//         errorMsg = "The password provided is too weak.";
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//         errorMsg = "The account already exists for that email.";
//       } else {
//         errorMsg = "The account already exists for that email.";
//       }
//
//       return left(errorMsg);
//     } catch (e) {
//       print(e);
//       errorMsg = "Something Went Wrong !";
//       return left(errorMsg);
//     }
//   }
// }
