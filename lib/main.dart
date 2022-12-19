import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_app/advanced_sliver_appbar.dart';
import 'package:flutter_test_app/custom_scroll_view_widgets.dart';
import 'package:flutter_test_app/ProviderState/provider_state.dart';
import 'package:flutter_test_app/ProviderState/switch_state.dart';
import 'package:flutter_test_app/route_generator.dart';
import 'package:flutter_test_app/tabbar_sliver.dart';


void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.red ,
    statusBarBrightness: Brightness.dark ,
    statusBarIconBrightness: Brightness.dark
  ));
  //await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const ProviderScope(child: MyApp()));
}

final providerTest = ChangeNotifierProvider<SwitchState>((ref) => SwitchState());
final providerRestoration = ChangeNotifierProvider<ProvideState>((ref) => ProvideState());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      restorationScopeId: "root",
      debugShowCheckedModeBanner: false ,
      onGenerateRoute: RouteGenerators.onGenerate ,
      //initialRoute: RouteGenerators.testPage ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdvancedSliverAppBar(),
      //home: const TabBarSliverAppBar(),
      //home: const CustomScrollViewWidgets(),
      //home: const TestPage(),
    );
  }
}

// class TestPage extends StatefulWidget {
//   const TestPage({Key? key}) : super(key: key);
//
//   @override
//   State<TestPage> createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }


