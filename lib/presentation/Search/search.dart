import 'dart:developer';

import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/widgets/iconbutton.dart';

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
                            //navigate to another screen after search

                            log('isadd : $isadd');

                            if (isadd == false) {
                              //search query is added to firebase
                            }
                            isadd = false;
                            textEditingController.text = '';
                          }
                        },
                      )),
                  h30,
                  //wrap widget [steam builder] for getting data from db and use 
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () async {},
                                child: listtitle(
                                    leadingWidget: h10,
                                    trailingWidget: GestureDetector(
                                        onTap: () async {
                                          //delete the querry from db
                                        },
                                        child: const Icon(more_vertical)),
                                    titleWidget: text(stringtext: 'title'),
                                    subtitleWidget: text(stringtext: 'subtitle if needed')));
                          },
                          separatorBuilder: (context, index) {
                            return divider;
                          },
                          itemCount: 10))
                ]))));
  }
}
