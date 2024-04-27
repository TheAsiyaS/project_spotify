import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/icons.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/presentation/splash_screen/splashscreen.dart';
import 'package:project_spotifyclone/widgets/circleavatar.dart';
import 'package:project_spotifyclone/widgets/cupertino_textfield.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class choose_artist extends StatelessWidget {
  const choose_artist({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<int>> selectedIndexs = ValueNotifier([]);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 9 : 0),
        child: Column(
          children: [
            Expanded(
                child: text(
              stringtext: 'Choose 2 or more artists you like.',
              fontSize: 35,
            )),
            cupertino_textfield(
              Placeholder: 'search....',
              backgroundcolor: white,
              prefixicon: iconsearch,
              suffixicon: null,
              id: 'chooseartist',
              placeholdercolor: grey,
              fontsize: 25,
            ),
            h20,
            ValueListenableBuilder(
                valueListenable: selectedIndexs,
                builder: (context, value, _) {
                  return Expanded(
                      flex: 5,
                      child: GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: kIsWeb ? 2 : 2 / 3,
                          children: List.generate(10, (index) {
                            return GestureDetector(
                                onTap: () {
                                  if (selectedIndexs.value.contains(index)) {
                                    selectedIndexs.value.remove(index);

                                    selectedIndexs.notifyListeners();
                                  } else {
                                    selectedIndexs.value.add(index);
                                    selectedIndexs.notifyListeners();
                                  }

                                  if (selectedIndexs.value.length == 4) {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const splashScreen()),
                                        (route) => false);
                                  }
                                },
                                child: circle_avatar(
                                  isname: true,
                                  artistname: 'Artist_name',
                                  radius: 50,
                                  imageUrl:
                                      'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg',
                                  isselect:
                                      selectedIndexs.value.contains(index),
                                ));
                          })));
                }),
          ],
        ),
      )),
    );
  }
}
