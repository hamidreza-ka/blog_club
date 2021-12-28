import 'package:blog_club/article.dart';
import 'package:blog_club/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff376aed);
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2d4379);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: primaryTextColor,
          background: Color(0xfffbfcff),
          onBackground: primaryTextColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: primaryTextColor,
          titleSpacing: 32,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.avenir,
              ),
            ),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: primaryColor,
        ),
        textTheme: TextTheme(
          caption: TextStyle(
            fontFamily: FontFamily.avenir,
            fontWeight: FontWeight.bold,
            color: Color(0xff7b8bb2),
            fontSize: 10,
          ),
          subtitle1: TextStyle(
            fontFamily: FontFamily.avenir,
            color: secondaryTextColor,
            fontWeight: FontWeight.w200,
            fontSize: 18,
          ),
          subtitle2: TextStyle(
              fontFamily: FontFamily.avenir,
              color: primaryTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          headline4: TextStyle(
            fontFamily: FontFamily.avenir,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
          headline5: TextStyle(
            fontFamily: FontFamily.avenir,
            fontSize: 20,
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontFamily: FontFamily.avenir,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
            fontSize: 18,
          ),
          bodyText2: TextStyle(
              fontFamily: FontFamily.avenir,
              color: secondaryTextColor,
              fontSize: 12),
        ),
      ),
      // home: Stack(
      //   children: [
      //     Positioned.fill(child: const HomeScreen()),
      //     Positioned(
      //       bottom: 0,
      //       right: 0,
      //       left: 0,
      //       child: _BottomNavigation(),
      //     ),
      //   ],
      // ),
      home: ArticleScreen(),
    );
  }
}

// class _BottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 85,
//       child: Stack(
//         children: [
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 65,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 25,
//                     color: Color(0xff9b8487).withOpacity(0.3),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   const _BottomNavigationItem(
//                     iconFileName: 'Home.png',
//                     activeIconFileName: 'Home.png',
//                     title: 'Home',
//                     isActive: false,
//                   ),
//                   const _BottomNavigationItem(
//                     iconFileName: 'Articles.png',
//                     activeIconFileName: 'Articles.png',
//                     title: 'Articles',
//                     isActive: false,
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   const _BottomNavigationItem(
//                     iconFileName: 'Search.png',
//                     activeIconFileName: 'Search.png',
//                     title: 'Search',
//                     isActive: false,
//                   ),
//                   const _BottomNavigationItem(
//                     iconFileName: 'Menu.png',
//                     activeIconFileName: 'Menu.png',
//                     title: 'Menu',
//                     isActive: false,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Center(
//             child: Container(
//               width: 65,
//               height: 85,
//               alignment: Alignment.topCenter,
//               child: Container(
//                 height: 65,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(32.5),
//                   color: Color(0xff376aed),
//                   border: Border.all(
//                     color: Colors.white,
//                     width: 4,
//                   ),
//                 ),
//                 child: Container(
//                   height: 65,
//                   width: 65,
//                   child: Icon(
//                     CupertinoIcons.add,
//                     size: 32,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class _BottomNavigationItem extends StatelessWidget {
//   final String iconFileName;
//   final String activeIconFileName;
//   final String title;
//   final bool isActive;

//   const _BottomNavigationItem({
//     Key? key,
//     required this.iconFileName,
//     required this.activeIconFileName,
//     required this.title,
//     required this.isActive,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//             'assets/img/icons/${isActive ? iconFileName : activeIconFileName}'),
//         SizedBox(
//           height: 4,
//         ),
//         Text(
//           title,
//           style: Theme.of(context).textTheme.caption,
//         ),
//       ],
//     );
//   }
// }
