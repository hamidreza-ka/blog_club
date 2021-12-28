import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: _themeData.colorScheme.surface,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                title: Text('Article'),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_rounded),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      child: Text(
                        'Four Things Every Woman Needs To Know',
                        style: _themeData.textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 16, 32),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Assets.img.stories.story9.image(
                              width: 48,
                              height: 48,
                              fit: BoxFit.cover,
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
                                  'Emilia Watson',
                                  style:
                                      _themeData.textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '2m ago',
                                  style: _themeData.textTheme.caption,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () => showSnackBar(
                                context, 'Bookmark Button Is Clicked'),
                            icon: Icon(
                              CupertinoIcons.bookmark,
                              color: _themeData.colorScheme.primary,
                            ),
                          ),
                          IconButton(
                            onPressed: () => showSnackBar(
                                context, 'Share Button Is Clicked'),
                            icon: Icon(
                              CupertinoIcons.share,
                              color: _themeData.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                      ),
                      child: Assets.img.background.singlePost.image(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                      child: Text(
                        'A man\'s mindset is never your mind responsibility.',
                        style: _themeData.textTheme.headline5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Text(
                        'This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s mindset is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have is whether or not you want to have. This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s mindset is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have mindset with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have mindset is whether or not you want to have mindset. This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s mindset is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have mindset with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have mindset is whether or not you want to have mindset.',
                        style: _themeData.textTheme.bodyText1!
                            .copyWith(height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 116,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    _themeData.colorScheme.surface,
                    _themeData.colorScheme.surface.withOpacity(0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () => showSnackBar(context, 'Like Button Is Clicked'),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 111,
          height: 48,
          decoration: BoxDecoration(
            color: _themeData.colorScheme.primary,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: _themeData.colorScheme.primary.withOpacity(0.5))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.img.icons.thumbs.svg(),
              SizedBox(
                width: 8,
              ),
              Text(
                '2.1k',
                style: _themeData.textTheme.subtitle1!.apply(
                    color: _themeData.colorScheme.onPrimary,
                    fontSizeFactor: 0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.fixed,
      ),
    );
  }
}
