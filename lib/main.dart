import 'package:flutter/material.dart';
import 'package:gestion.tutorias/ui/pages/Home_page.dart';
import 'package:gestion.tutorias/ui/pages/create_groups_page.dart';
import 'package:gestion.tutorias/ui/pages/create_sesion_page.dart';
import 'package:gestion.tutorias/ui/pages/login_page.dart';
import 'package:gestion.tutorias/ui/pages/Nav_page.dart';
import 'package:gestion.tutorias/ui/pages/register_page.dart';
import 'package:gestion.tutorias/ui/theme/theme.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gestion tutorias',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.ligthTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.system,
      
       home: const CreateSesion(),
      // rutas
      initialRoute: '/login',
      getPages: [
        GetPage(
            name: '/login',
            page: () => const LoginPage(),
            transition: Transition.fadeIn),
         GetPage(
            name: '/Nav',
            page: () =>  Nav_page(),
            transition: Transition.fadeIn), 
        GetPage(
            name: '/register',
            page: () => const RegisterPage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/home',
            page: () =>  const HomePage(),
            transition: Transition.fadeIn),
        GetPage(
            name: '/group',
            page: () => const CreateGroups(),
            transition: Transition.fadeIn),
       GetPage(
            name: '/sesion',
            page: () => const CreateSesion(),
            transition: Transition.fadeIn),
      ],

      
    );
  }

}

