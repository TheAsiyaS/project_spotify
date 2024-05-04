import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/Domain/Db/infrastructure/firestoreMethod.dart';
import 'package:project_spotifyclone/core/currentuser_detail.dart';
import 'package:project_spotifyclone/presentation/Search/afterSearch.dart';
import 'package:project_spotifyclone/widgets/iconbutton.dart';
import 'package:project_spotifyclone/widgets/snapWaiting.dart';

import '../../core/colors.dart';
import '../../core/divider.dart';
import '../../core/icons.dart';
import '../../core/size.dart';
import '../../widgets/listtitle.dart';
import '../../widgets/texts.dart';


class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textEditingController = TextEditingController();
    bool isadd = false;
    return Scaffold(
        appBar: AppBar(
          title: text(
            stringtext: 'Search',
            fontSize: 30,
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kIsWeb ? size.width / 5 : 0),
                child: Column(children: [
                  const Divider(),
                  SizedBox(
                      height: size.height / 13,
                      width: size.width,
                      child: CupertinoTextField(
                        controller: textEditingController,
                        decoration: BoxDecoration(
                            color: transparentgrey,
                            borderRadius: BorderRadius.circular(10)),
                        prefix: iconbutton(
                          iconwidget: const Icon(
                            iconsearch,
                            size: 27,
                            color: white,
                          ),
                          onpress: () {},
                        ),
                        style: const TextStyle(color: white),
                        placeholder: 'What do you want to listern to?',
                        placeholderStyle: const TextStyle(
                            color: white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                        onChanged: (value) {
                          log(value);
                          if (isadd == true) {
                            isadd = false;
                          }
                        },
                        onSubmitted: (value) async {
                          if (value.isNotEmpty) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => aftersearch(
                                      query: value,
                                    )));

                            log('isadd : $isadd');

                            if (isadd == false) {
                              await FirestoreMethod().search_add(
                                  profileImg: CurrentUserData!.photoURL!,
                                  username: CurrentUserData!.displayName!,
                                  serach_query: value,
                                  uid: CurrentUserData!.uid);
                            }
                            isadd = false;
                            textEditingController.text = '';
                          }
                        },
                      )),
                  h30,
                  StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('search')
                          .where('uid', isEqualTo: CurrentUserData!.uid)
                          .orderBy('search_query', descending: false)
                          .snapshots(),
                      builder: (
                        context,  
                        snapshot,
                      ) {
                        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                          return Center(
                              child: text(stringtext: 'No Search Item Found'));
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const snapwaiting(color: spotify_green);
                        } else if (snapshot.hasError) {
                          return text(
                              stringtext:
                                  'Some error occured. ${snapshot.hasError}');
                        } else {
                          return Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    final data =
                                        snapshot.data!.docs[index].data();
                                    return GestureDetector(
                                        onTap: () async {
                                          textEditingController.text =
                                              data['search_query'];
                                          DocumentReference docRef =
                                              FirebaseFirestore.instance
                                                  .collection('search')
                                                  .doc(data['searchUid']);
                                          bool documentExists =
                                              (await docRef.get()).exists;
                                          isadd = documentExists;
                                        },
                                        child: listtitle(
                                            leadingWidget: h10,
                                            trailingWidget: GestureDetector(
                                                onTap: () async {
                                                  await FirestoreMethod()
                                                      .deleteSearch(
                                                          uid: data[
                                                              'searchUid']);
                                                },
                                                child:
                                                    const Icon(more_vertical)),
                                            titleWidget: text(
                                                stringtext:
                                                    data['search_query']),
                                            subtitleWidget:
                                                text(stringtext: '')));
                                  },
                                  separatorBuilder: (context, index) {
                                    return divider;
                                  },
                                  itemCount: snapshot.data!.docs.length));
                        }
                      })
                ]))));
  }
}
