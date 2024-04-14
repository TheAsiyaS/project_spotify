import 'package:cloud_firestore/cloud_firestore.dart';

class ArtistModel {
  final String artistid;
  final String username;
  final String profileImg;
  final String uid;

  ArtistModel({
    required this.artistid,
    required this.username,
    required this.profileImg,
    required this.uid,
  });
  Map<String, dynamic> toJson() => {
        'artistid': artistid,
        'username': username,
        'profileImg': profileImg,
        'uid': uid,
      };

  static ArtistModel fromSnap(DocumentSnapshot snap) {
    //convert user snapshot to userdataObj
    var snapshot = snap.data()
        as Map<String, dynamic>; //declare userdata as Map<string , dynamic>
    return ArtistModel(
      artistid: snapshot['artistid'],
      username: snapshot['artistid'],
      profileImg: snapshot['profileImg'],
      uid: snapshot['uid'],
    );
  }
}
