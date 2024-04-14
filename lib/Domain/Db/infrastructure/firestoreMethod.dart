import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_spotifyclone/Domain/Db/models/ArtistModel.dart';
import 'package:project_spotifyclone/Domain/Db/models/SearchModel.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethod {
  //for add data to firebase
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  

  Future<bool> search_add(
      {required String profileImg,
      required String username,
      required String serach_query,
      required String uid}) async {
    bool isOk;
    try {
      final searchUid = const Uuid().v1();
      final docUser = _firestore.collection('search').doc(searchUid);
      final data = SearchModel(
          profileImg: profileImg,
          username: username,
          serach_query: serach_query,
          uid: uid,
          searchUid: searchUid);
      final decodeJson = data.toJson();
      await docUser.set(decodeJson);
      isOk = true;
    } catch (e) {
      isOk = false;
    }
    return isOk;
  }

  Future<bool> deleteSearch({required uid}) async {
    bool isok;
    try {
      if (uid != null) {
        await _firestore.collection('search').doc(uid).delete();
        isok = true;
      }
      isok = true;
    } catch (e) {
      isok = false;
    }
    return isok;
  }
}
