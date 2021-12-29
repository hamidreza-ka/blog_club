import 'package:blog_club/data.dart';
import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final List<PostData> postList = AppDatabase.posts;

    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: Text('Profile'),
            elevation: 0,
            backgroundColor: _themeData.colorScheme.background.withOpacity(0),
            actions: [
              IconButton(
                icon: Icon(Icons.more_horiz_rounded),
                onPressed: () {},
              ),
              SizedBox(
                width: 32,
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 64),
                decoration: BoxDecoration(
                  color: _themeData.colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color:
                          _themeData.colorScheme.onBackground.withOpacity(0.1),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Assets.img.stories.story8.image(
                              width: 84,
                              height: 84,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '@joviedan',
                                  style: _themeData.textTheme.caption,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Jovi Daniel',
                                  style:
                                      _themeData.textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'UX Researcher',
                                  style: _themeData.textTheme.bodyText1!.apply(
                                    color: _themeData.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: Text(
                        'About Me',
                        style: _themeData.textTheme.headline6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 4, 32, 32),
                      child: Text(
                        'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                        style: _themeData.textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 32,
                left: 96,
                right: 96,
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        color: _themeData.colorScheme.onBackground
                            .withOpacity(0.8),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 32,
                right: 64,
                left: 64,
                child: Container(
                  height: 68,
                  decoration: BoxDecoration(
                    color: _themeData.colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff2151cd),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '52',
                                style: _themeData.textTheme.headline5!.apply(
                                  color: _themeData.colorScheme.onPrimary,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Post',
                                style: _themeData.textTheme.bodyText2!.copyWith(
                                  color: _themeData.colorScheme.surface,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '250',
                              style: _themeData.textTheme.headline5!.apply(
                                color: _themeData.colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Following',
                              style: _themeData.textTheme.bodyText2!.copyWith(
                                color: _themeData.colorScheme.surface,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.5K',
                              style: _themeData.textTheme.headline5!.apply(
                                color: _themeData.colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Followers',
                              style: _themeData.textTheme.bodyText2!.copyWith(
                                color: _themeData.colorScheme.surface,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
              decoration: BoxDecoration(
                color: _themeData.colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'My Posts',
                            style: _themeData.textTheme.headline6,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.app_badge,
                            color: _themeData.colorScheme.primary,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        IconButton(
                          icon: Icon(Icons.menu_open_rounded),
                          onPressed: () {},
                        )
                      ],
                    ),
                    for (var post in postList) PostItem(post: post),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
