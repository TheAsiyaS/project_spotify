import 'package:cloud_firestore/cloud_firestore.dart';

class SearchModel {
  final String username;
  String? uid;
  final String serach_query;
  final String searchUid;
  final String profileImg;
  SearchModel( {
    required this.searchUid,
    required this.serach_query,
    required this.profileImg,
    required this.username,
    this.uid,
  });
  Map<String, dynamic> toJson() => {
        'search_query': serach_query,
        'username': username,
        'profileImg': profileImg,
        'uid': uid,
        'searchUid':searchUid
      };

  static SearchModel fromSnap(DocumentSnapshot snap) {
    //convert user snapshot to userdataObj
    var snapshot = snap.data()
        as Map<String, dynamic>; //declare userdata as Map<string , dynamic>
    return SearchModel (
      searchUid: snapshot['searchUid'],
      serach_query: snapshot['search_query'],
      username: snapshot['username'],
      profileImg: snapshot['profileImg'],
      uid: snapshot['uid'],
    );
  }
}

