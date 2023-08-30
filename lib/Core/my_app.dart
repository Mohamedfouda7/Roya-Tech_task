import 'package:easy_localization/easy_localization.dart';
import 'package:roya_tech_task/Core/Resources/theme_manager.dart';
import 'package:roya_tech_task/Features/MyRequests/Presentation/Screens/MyRequests.dart';
import 'app_exports.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const _myAppInstance = MyApp._internal();
  factory MyApp() => _myAppInstance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      title: "Roya-Tech-Task",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home:  MyRequests(),
    );
  }
}
