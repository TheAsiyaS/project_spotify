// screen only show to new memebe of spotify


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/buttons.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/size.dart';
import 'package:project_spotifyclone/core/url.dart';
import 'package:project_spotifyclone/widgets/carditem.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

class whatmusiclike extends StatelessWidget {
  const whatmusiclike({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ValueNotifier<int?> selectedIndex = ValueNotifier(null);
    bool userselect = true;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kIsWeb ? size.width / 5 : 0),
        child: Column(
            crossAxisAlignment:
                kIsWeb ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              text(
                stringtext: 'What music do you like?',
                fontSize: 32,
              ),
              SizedBox(
                height: size.height / 15,
              ),
              SizedBox(
                height: size.height / 1.5,
                width: size.width,
                child: ValueListenableBuilder(
                    valueListenable: selectedIndex,
                    builder: (context, value, _) {
                      return GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                        childAspectRatio: kIsWeb ? 2 : 6 / 4,
                        children: List.generate(4, (index) {
                          final isSelected = selectedIndex.value == index;
                          return GestureDetector(
                            onTap: () {
                              selectedIndex.value = index;
                              userselect = isSelected;
                            },
                            child: carditem(
                              isselect: isSelected,
                              size: size,
                              fontsize: 25,
                              cardtext: asign[index],
                              img_url: singers[index],
                              color: colorsinger[index],
                              assetornet: true,
                              rotate: 0,
                              borderRadius: 0,
                            ),
                          );
                        }),
                      );
                    }),
              ),
              userselect
                  ? Align(
                      alignment: Alignment.center,
                      child: Container_button(
                        height: size.height / 13,
                        width: size.width / 2.4,
                        buttontext: 'Next',
                        id: 'whatmusicNEXT',
                        color1: button_green,
                        color2: black,
                        fontsize: 25,
                        textcolor: lightwhite,
                      ),
                    )
                  : h10,
            ]),
      )),
    );
  }
}
