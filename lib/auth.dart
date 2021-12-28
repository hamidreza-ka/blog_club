import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTab = 0;
  static const int signUpTab = 1;
  int selectedTabIndex = loginTab;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: Assets.img.icons.logo.svg(width: 120),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: themeData.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () => setState(() {
                              selectedTabIndex = loginTab;
                            }),
                            child: Text(
                              'LOGIN',
                              style: themeData.textTheme.headline6?.apply(
                                color: themeData.colorScheme.onPrimary
                                    .withOpacity(
                                        selectedTabIndex == loginTab ? 1 : 0.5),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => setState(() {
                              selectedTabIndex = signUpTab;
                            }),
                            child: Text(
                              'SIGN UP',
                              style: themeData.textTheme.headline6?.apply(
                                color: themeData.colorScheme.onPrimary
                                    .withOpacity(selectedTabIndex == signUpTab
                                        ? 1
                                        : 0.5),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: themeData.colorScheme.surface,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(32),
                            topLeft: Radius.circular(32),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(64),
                            child: selectedTabIndex == loginTab
                                ? _Login(themeData: themeData)
                                : _SignUp(themeData: themeData),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Sign in with your account',
          style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
              label: Text(
            'Username',
            style: themeData.textTheme.subtitle2,
          )),
        ),
        const SizedBox(
          height: 8,
        ),
        PasswordTextField(),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(
                MediaQuery.of(context).size.width,
                60,
              ),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          child: Text(
            'LOGIN',
            style: themeData.textTheme.headline6!
                .apply(color: themeData.colorScheme.onPrimary),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Fogot your password?'),
            SizedBox(
              width: 8,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Reset here'),
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Center(
            child: Text(
          'OR SIGN IN WITH',
          style: TextStyle(
            letterSpacing: 2,
          ),
        )),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.facebook.image(
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.dribble.image(
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(
              width: 36,
              height: 36,
            ),
          ],
        ),
      ],
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to blog club',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Please enter your information',
          style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
              label: Text(
            'Fullname',
            style: themeData.textTheme.subtitle2,
          )),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              label: Text(
            'Username',
            style: themeData.textTheme.subtitle2,
          )),
        ),
        const SizedBox(
          height: 8,
        ),
        PasswordTextField(),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(
                MediaQuery.of(context).size.width,
                60,
              ),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          child: Text(
            'Sign Up',
            style: themeData.textTheme.headline6!
                .apply(color: themeData.colorScheme.onPrimary),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 32,
        ),
        Center(
            child: Text(
          'OR SIGN UP WITH',
          style: TextStyle(
            letterSpacing: 2,
          ),
        )),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.facebook.image(
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.dribble.image(
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(
              width: 36,
              height: 36,
            ),
          ],
        ),
      ],
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscureText,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        label: Text(
          'Password',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        suffix: TextButton(
          onPressed: () => setState(() {
            isObscureText = !isObscureText;
          }),
          child: Text(isObscureText ? 'Show' : 'Hide'),
        ),
      ),
    );
  }
}
