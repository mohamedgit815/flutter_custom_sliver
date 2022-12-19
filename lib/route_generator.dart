import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/main.dart';

class RouteGenerators {

  static const String testPage = '/TestPage';
  static const String nextTestPage = '/NextTestPage';
  static const String updateTodoScreen = '/UpdateTodoScreen';


  static MaterialPageRoute<dynamic> _materialPageRoute(Widget page) {
    return MaterialPageRoute( builder: ( _ ) => page );
  }

  static CupertinoPageRoute<dynamic> _cupertinoPageRoute(Widget page) {
    return CupertinoPageRoute( builder: ( _ ) => page );
  }


  static Route<dynamic>? onGenerate(RouteSettings settings) {
    switch(settings.name) {

       //case testPage : return _materialPageRoute(const TestPage());

       //case nextTestPage : return _cupertinoPageRoute(const NextTestPage());

      // case nextTestPage :
      //   final String data = settings.arguments as String;
      //   return _cupertinoPageRoute(NextTestPage(name: data));

    }
    return null;
  }


}


class AppNavigator {

  Future<dynamic> backPageRouter({required BuildContext context, dynamic arguments}) async {
    return await Navigator.of(context).maybePop(arguments);
  }

  String pushNamedRouter({required String route ,required BuildContext context,dynamic arguments}) {
    return Navigator.of(context).restorablePushNamed(route,arguments: arguments);
  }

  String pushNamedAndReplaceRouter({required String route ,required BuildContext context,dynamic arguments}) {
    return Navigator.of(context).restorablePushReplacementNamed(route,arguments: arguments);
  }

  String pushNamedAndRemoveRouter({required String route ,required BuildContext context,dynamic arguments}) {
    return Navigator.of(context).restorablePushNamedAndRemoveUntil(route , (route) => false,arguments: arguments);
  }

}
