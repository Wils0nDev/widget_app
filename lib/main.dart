import 'package:flutter/material.dart';
import 'package:widgets_app/config/app_theme.dart';
import 'package:widgets_app/config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    //.router : nos permite llamar a nuestro en rutador de rutas, esto nos proporciona la libreria go_router
    return  MaterialApp.router(
      //routerConfig: me permite configurar mis enrutadores
      //appRouter : Es mi enrutador donde defino los paths
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      //AppTheme : clase que contiene la configuración base de mi app
      theme: AppTheme(selectedColor: 3).getTheme(),
    );
  }
}

