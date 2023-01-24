import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final firebase = FirebaseFirestore.instance;

  var location = 'Eng';

  CollectionReference heroRef = firebase.collection('hero');
  CollectionReference postsRef = firebase.collection('posts');
  CollectionReference worksRef = firebase.collection('works');
}
