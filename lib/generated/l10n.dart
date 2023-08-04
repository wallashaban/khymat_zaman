// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome back!`
  String get welcome {
    return Intl.message(
      'Welcome back!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Log back into your account`
  String get log {
    return Intl.message(
      'Log back into your account',
      name: 'log',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember {
    return Intl.message(
      'Remember me',
      name: 'remember',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign {
    return Intl.message(
      'Sign in',
      name: 'sign',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forget {
    return Intl.message(
      'Forget password?',
      name: 'forget',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Dont have an account ?`
  String get noAccount {
    return Intl.message(
      'Dont have an account ?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Account not verified. Verify Now?`
  String get notValid {
    return Intl.message(
      'Account not verified. Verify Now?',
      name: 'notValid',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create {
    return Intl.message(
      'Create account',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get haveAccount {
    return Intl.message(
      'Already have account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up and start shopping`
  String get titleSignup {
    return Intl.message(
      'Sign up and start shopping',
      name: 'titleSignup',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Find your account`
  String get find {
    return Intl.message(
      'Find your account',
      name: 'find',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuee {
    return Intl.message(
      'Continue',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `Type your Email`
  String get typeEmail {
    return Intl.message(
      'Type your Email',
      name: 'typeEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Resend code to`
  String get resend {
    return Intl.message(
      'Resend code to',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Your Email`
  String get confirm {
    return Intl.message(
      'Confirm Your Email',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Write down confirmation code `
  String get writeCode {
    return Intl.message(
      'Write down confirmation code ',
      name: 'writeCode',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create Your New Password`
  String get CreatePassword {
    return Intl.message(
      'Create Your New Password',
      name: 'CreatePassword',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
