import 'package:blog_club/article.dart';
import 'package:blog_club/gen/fonts.gen.dart';
import 'package:blog_club/home.dart';
import 'package:blog_club/profile.dart';
import 'package:blog_club/simple.dart';
import 'package:flutter/cupertino.dart';
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
            fontWeight: FontWeight.w400,
          ),
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
          bodyText1: TextStyle(
            fontFamily: FontFamily.avenir,
            color: primaryTextColor,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            fontFamily: FontFamily.avenir,
            color: secondaryTextColor,
            fontSize: 12,
          ),
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
      home: MainScreeen(),
    );
  }
}

class MainScreeen extends StatefulWidget {
  @override
  State<MainScreeen> createState() => _MainScreeenState();
}

const int homeIndex = 0;
const int articleIndex = 1;
const int searchIndex = 2;
const int menuIndex = 3;
const double bottomNavigationHeight = 65;

class _MainScreeenState extends State<MainScreeen> {
  int selectedTabIndex = homeIndex;

  GlobalKey<NavigatorState> _homeGlobalKey = GlobalKey();
  GlobalKey<NavigatorState> _articleGlobalKey = GlobalKey();
  GlobalKey<NavigatorState> _searchGlobalKey = GlobalKey();
  GlobalKey<NavigatorState> _menuGlobalKey = GlobalKey();

  final List<int> _selectedTabHistory = [];

  late final map = {
    homeIndex: _homeGlobalKey,
    articleIndex: _articleGlobalKey,
    searchIndex: _searchGlobalKey,
    menuIndex: _menuGlobalKey,
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTabNavigatorState =
        map[selectedTabIndex]!.currentState!;

    if (currentSelectedTabNavigatorState.canPop()) {
      currentSelectedTabNavigatorState.pop();
      return false;
    } else if (_selectedTabHistory.isNotEmpty) {
      setState(() {
        selectedTabIndex = _selectedTabHistory.last;
        _selectedTabHistory.removeLast();
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              bottom: bottomNavigationHeight,
              child: IndexedStack(
                index: selectedTabIndex,
                children: [
                  _navigator(_homeGlobalKey, homeIndex, const HomeScreen()),
                  _navigator(_articleGlobalKey, articleIndex, ArticleScreen()),
                  _navigator(_searchGlobalKey, searchIndex, SimpleScreen(tabName: 'Search',)),
                  _navigator(_menuGlobalKey, menuIndex, ProfileScreen()),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _BottomNavigation(
                onItemTap: (index) => setState(() {
                  _selectedTabHistory.remove(index);
                  _selectedTabHistory.add(index);
                  selectedTabIndex = index;
                }),
                selectedIndex: selectedTabIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState == null && selectedTabIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => Offstage(
                offstage: selectedTabIndex != index,
                child: child,
              ),
            ),
          );
  }
}

class _BottomNavigation extends StatelessWidget {
  final Function(int index) onItemTap;
  final int selectedIndex;

  const _BottomNavigation({
    Key? key,
    required this.onItemTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: bottomNavigationHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    color: Color(0xff9b8487).withOpacity(0.3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _BottomNavigationItem(
                    iconFileName: 'Home.png',
                    activeIconFileName: 'Home.png',
                    title: 'Home',
                    isActive: selectedIndex == homeIndex,
                    onTap: () => onItemTap(homeIndex),
                  ),
                  _BottomNavigationItem(
                    iconFileName: 'Articles.png',
                    activeIconFileName: 'Articles.png',
                    title: 'Articles',
                    isActive: selectedIndex == articleIndex,
                    onTap: () => onItemTap(articleIndex),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  _BottomNavigationItem(
                    iconFileName: 'Search.png',
                    activeIconFileName: 'Search.png',
                    title: 'Search',
                    isActive: selectedIndex == searchIndex,
                    onTap: () => onItemTap(searchIndex),
                  ),
                  _BottomNavigationItem(
                    iconFileName: 'Menu.png',
                    activeIconFileName: 'Menu.png',
                    title: 'Menu',
                    isActive: selectedIndex == menuIndex,
                    onTap: () => onItemTap(menuIndex),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 85,
              alignment: Alignment.topCenter,
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.5),
                  color: Color(0xff376aed),
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
                child: Container(
                  height: 65,
                  width: 65,
                  child: Icon(
                    CupertinoIcons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  final bool isActive;
  final Function() onTap;

  const _BottomNavigationItem({
    Key? key,
    required this.iconFileName,
    required this.activeIconFileName,
    required this.title,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/icons/${isActive ? iconFileName : activeIconFileName}',
              width: 24,
              height: 24,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: _themeData.textTheme.caption!.apply(
                color: isActive
                    ? _themeData.colorScheme.primary
                    : _themeData.textTheme.caption!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
