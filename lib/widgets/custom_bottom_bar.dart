import 'package:apni_gaadi/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIcOutlineHome,
      activeIcon: ImageConstant.imgIcOutlineHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchOnprimarycontainer,
      activeIcon: ImageConstant.imgSearchOnprimarycontainer,
      title: "Fmy ac",
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconamoonProfileLight,
      activeIcon: ImageConstant.imgIconamoonProfileLight,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: appTheme.cyan400,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 48.v,
              width: 51.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      right: 10.h,
                      bottom: 18.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 29.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.titleSmall!.copyWith(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              height: 48.v,
              width: 43.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      right: 7.h,
                      bottom: 18.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 29.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.titleSmall!.copyWith(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Search,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

// class DefaultWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.all(10),
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Please replace the respective Widget here',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
